import 'package:flutter/material.dart';
import 'package:musicplayer/colors.dart' as AppColors;
import 'package:path/path.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  PlaylistState createState() => PlaylistState();
}

class PlaylistState extends State<Playlist> {
  List<Column> playlistCreator = [
    // Column(
    //   children: [
    //     Container(
    //       height: 100,
    //       width: 150,
    //       child: Icon(
    //         Icons.music_note_outlined,
    //         size: 60,
    //         color: Colors.grey,
    //       ),
    //       decoration: BoxDecoration(
    //           color: AppColors.back,
    //           shape: BoxShape.rectangle,
    //           borderRadius: BorderRadius.circular(10)),
    //     ),
    //     Text(
    //       "English",
    //       style: TextStyle(color: Colors.grey, fontSize: 20),
    //       overflow: TextOverflow.ellipsis,
    //     ),
    //   ],
    // ),

  ];
  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.shade,
        body: Stack(
          children: [
            Positioned(
              top:15,
              left: 15,
              child: GestureDetector(
                onTap: (){

                  // showDialog(
                  //     context: context,
                  //     builder: (context) {
                  //       return AlertDialog(
                  //         title: Text(
                  //           "Create Playlist",
                  //           style: TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 23,
                  //               fontFamily: "Titil",
                  //               fontWeight: FontWeight.w700),
                  //         ),
                  //         content: TextField(
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //         actions: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //             children: [
                  //               Container(
                  //                 alignment: Alignment.bottomLeft,
                  //                 child: TextButton(
                  //                   onPressed: () {
                  //                     Navigator.pop(context);
                  //                   },
                  //                   child: Text(
                  //                     "Cancel",
                  //                     style: TextStyle(
                  //                         color: Colors.white,
                  //                         fontSize: 20,
                  //                         fontFamily: "Titil"),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Container(
                  //                 alignment: Alignment.bottomRight,
                  //                 child: TextButton(
                  //                   onPressed: () {},
                  //                   child: Text(
                  //                     "Create",
                  //                     style: TextStyle(
                  //                         color: Colors.white,
                  //                         fontSize: 20,
                  //                         fontFamily: "Titil"),
                  //                   ),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //         ],
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(20)),
                  //         backgroundColor: AppColors.back,
                  //       );
                  //     });
                  playlistCreator.add( Column(
                    children: [
                      Container(
                        height: 100,
                        width: 120,
                        child: Icon(
                          Icons.music_note_outlined,
                          size: 60,
                          color: Colors.grey,
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.back,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        "English",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),);
                },
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 125,
                      child: Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.grey,
                      ),
                      decoration: BoxDecoration(
                          color: AppColors.back,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Add Playlist",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: Heights/5,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(bottom: 70,left: 16,right: 16,top: 16),
                child: GridView.count(
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 5,
                  crossAxisCount: 3,
                  children: playlistCreator,
                ),
                decoration: BoxDecoration(
                  // color:AppColors.shade,
                    color: AppColors.shade),
                height: Heights,
                width: Weights,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
