import 'package:just_audio/just_audio.dart';
import 'package:musicplayer/colors.dart' as AppColors;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:musicplayer/db/Favourite/db_helper.dart';
import 'package:musicplayer/db/Favourite/helper.dart';
import 'package:on_audio_query/on_audio_query.dart';
import '../PageManager.dart';

class Track extends StatefulWidget {
  @override
  TrackState createState() => TrackState();
}

class TrackState extends State<Track> {
  final OnAudioQuery audioQuery = OnAudioQuery();

  late final AudioPlayer player;

  List<SongModel> Tracks = [];

  int currentIndex = 0;

  int isFav = 0;
  dynamic songTitle;
  dynamic songId;
  dynamic songLocation;
  PageManager? _pageManager;


  DatabaseHandler? handler;

  void initState() {
    requestPermission();
    _pageManager = PageManager();
    super.initState();
    player = AudioPlayer();
    getTracks();
    handler = DatabaseHandler();
   setState(() {
     requestPermission();
   });
    addUsers(songTitle, songId, songLocation);
  }

  Future<int> addUsers(songTitle, songId, songLocation) async {
    User firstUser = User(name: songTitle, num: songId, location: songLocation);
    List<User> listOfUsers = [firstUser];
    debugPrint("ADNAN:$songTitle");
    debugPrint("ADNAN: $songId");
    debugPrint("ADNAN: $songLocation");
    return await handler!.insertUser(listOfUsers);
  }

  requestPermission() async {
    // Web platform don't support permissions methods.
    if (!kIsWeb) {
      bool permissionStatus = await audioQuery.permissionsStatus();
      if (!permissionStatus) {
        await audioQuery.permissionsRequest();
      }
      setState(() {});
    }
  }

  void getTracks() async {
    Tracks = await audioQuery.querySongs();
    setState(() {
      Tracks = Tracks;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.shade,
      body: Container(
        padding: EdgeInsets.only(bottom: 60),
        child: ListView.builder(
            itemCount: Tracks.length,
            itemBuilder: (BuildContext context, int index) {
              if (Tracks[index].data.contains("mp3"))
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // player.setUrl(Tracks[index].data);
                        // currentIndex = index;
                        // player.play();
                        dynamic songs = Tracks[index].data;
                        _pageManager!.loadPlaylist(songs);
                        _pageManager!.play();
                      },
                      child: ListTile(
                        leading: QueryArtworkWidget(
                          artworkBorder: BorderRadius.circular(8),
                          nullArtworkWidget: Container(
                              width: Weights / 8,
                              height: Heights / 14,
                              decoration: BoxDecoration(
                                  color: AppColors.back,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.music_note_outlined,
                                color: Colors.grey,
                                size: 45,
                              )),
                          id: Tracks[index].id,
                          type: ArtworkType.AUDIO,
                          artworkFit: BoxFit.contain,
                        ),
                        title: Text(
                          Tracks[index].title,
                          style: TextStyle(color: Colors.white, fontSize: 17),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        subtitle: Text(
                          Tracks[index].displayNameWOExt,
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: PopupMenuButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                            color: AppColors.back,
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text(
                                      "Delete",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    value: 1,
                                  ),
                                  PopupMenuItem(
                                    child: Text(
                                      "Add to Favourite",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      player.setUrl(Tracks[index].data);
                                      setState(() {
                                        songTitle = Tracks[index].title;
                                        songId = Tracks[index].id;
                                        songLocation = Tracks[index].data;
                                        addUsers(songTitle, songId,
                                            songLocation);
                                      });
                                    },
                                    value: 2,
                                  ),
                                  PopupMenuItem(
                                    child: Text(
                                      "Stop",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      player.setUrl(Tracks[index].data);
                                      currentIndex = index;
                                      player.stop();
                                    },
                                    value: 2,
                                  )
                                ]),
                      ),
                    ),
                    Divider(
                      height: 0,
                      indent: 85,
                      color: Colors.grey,
                    ),
                  ],
                );
              return Container(
                height: 0,
              );
            }),
      ),
    );
  }
}
