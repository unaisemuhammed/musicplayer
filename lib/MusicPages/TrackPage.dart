import 'package:flutter/material.dart';
import 'package:musicplayer/colors.dart' as AppColors;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:on_audio_query/on_audio_query.dart';

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  final OnAudioQuery _audioQuery = OnAudioQuery();

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  requestPermission() async {
    // Web platform don't support permissions methods.
    if (!kIsWeb) {
      bool permissionStatus = await _audioQuery.permissionsStatus();
      if (!permissionStatus) {
        await _audioQuery.permissionsRequest();
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.back,
        body: Container(
          padding: EdgeInsets.only(bottom: 60),
          // child: Center(
          //     child: Text(
          //   "No track found.",style: TextStyle(color: Colors.grey),
          // )),
          child:  FutureBuilder<List<SongModel>>(
            // Default values:
            future: _audioQuery.querySongs(
              sortType: null,
              orderType: OrderType.ASC_OR_SMALLER,
              uriType: UriType.EXTERNAL,
              ignoreCase: true,
            ),
            builder: (context, item) {
              // Loading content
              if (item.data == null) return const CircularProgressIndicator(
                color: Colors.white,strokeWidth: 2,
              );
              // When you try "query" without asking for [READ] or [Library] permission
              // the plugin will return a [Empty] list.
              if (item.data!.isEmpty) return Center(child: const Text("Nothing found!",style: TextStyle(color: Colors.white)));
              // You can use [item.data!] direct or you can create a:
              // List<SongModel> songs = item.data!;
              return ListView.builder(
                itemCount: item.data!.length,
                itemBuilder: (context, index) {
                  return  Column(
                    children: [
                      ListTile(
                        title: Text(item.data![index].title,style: TextStyle(color: Colors.white70),),
                        subtitle: Text(item.data![index].artist ?? "No Artist",style: TextStyle(color: Colors.white)),
                        trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.more_vert,color: Colors.grey,),),
                        // This Widget will query/load image. Just add the id and type.
                        // You can use/create your own widget/method using [queryArtwork].
                        leading: QueryArtworkWidget(
                          id: item.data![index].id,
                          type: ArtworkType.AUDIO,
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
            },
          ),
          decoration: BoxDecoration(
            color: AppColors.shade,
          ),
          height: Heights,
          width: Width,
        ),
      ),
    );
  }
}
