import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:musicplayer/colors.dart' as AppColors;
import 'package:musicplayer/db/Favourite/db_helper.dart';
import 'package:musicplayer/db/Favourite/helper.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../PageManager.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  int favourite = 0;
  dynamic songs = [];
  late DatabaseHandler handler;
  late final AudioPlayer player;
  final OnAudioQuery audioQuery = OnAudioQuery();
  late PageManager _pageManager;

  @override
  void initState() {
    super.initState();
    _pageManager = PageManager();
    addSongToPageManager(songs);
    handler = DatabaseHandler();
    player = AudioPlayer();
    // handler.retrieveUsers();
  }

  Future<dynamic> addSongToPageManager(songs) async{
    return await _pageManager.loadPlaylist(songs);
  }

  void getTracks() async {
    songs = handler.retrieveUsers() as List<SongModel>;
  }

  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.shade,
        body: Container(
          padding: EdgeInsets.only(bottom: 60),
          child: FutureBuilder(
            future: this.handler.retrieveUsers(),
            builder:
                (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        ListTile(
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
                            id: snapshot.data![index].num,
                            type: ArtworkType.AUDIO,
                            artworkFit: BoxFit.contain,
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                            onPressed: () async {
                              await this
                                  .handler
                                  .deleteUser(snapshot.data![index].id!);
                              setState(() {
                                snapshot.data!.remove(snapshot.data![index]);
                              });
                            },
                          ),
                          onTap: () {
                            // player.setUrl(snapshot.data![index].location);
                            // player.play();
                            songs = snapshot.data![index].location;
                            addSongToPageManager(songs);
                            _pageManager.play();

                          },
                          title: Text(
                            snapshot.data![index].name,
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          subtitle: Text(
                            "ariana Grande",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Divider(
                          height: 0,
                          indent: 85,
                          color: Colors.grey,
                        ),
                      ],
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
