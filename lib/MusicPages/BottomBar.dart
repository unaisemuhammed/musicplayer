import 'package:animations/animations.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:musicplayer/colors.dart' as AppColors;
import '../PageManager.dart';
import 'MusicControllPage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  BottomBarState createState() => BottomBarState();
}

class BottomBarState extends State<BottomBar> {
  var _audioPlayer;
  late final PageManager _pageManager;
  @override
  void initState(){
    super.initState();
    _pageManager =PageManager();
  }

  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MusicControll(),
            ));
      },
      child: Center(
        child: OpenContainer(
          transitionDuration: Duration(milliseconds: 500),
          closedBuilder: (_, openContainer) {
            return Container(
              height: 90,
              width: Weights,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.shade,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      iconSize: 30,
                      alignment: Alignment.centerLeft,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MusicControll(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.music_note_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Marquee(
                      blankSpace: 100,
                      text:
                      'Selena Gomez - The Heart Wants What It Wants (Official Video)',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Titil"),
                    ),
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  IconButton(
                    iconSize: 30,
                    alignment: Alignment.centerRight,
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(Icons.skip_previous_sharp),
                  ),
                  ValueListenableBuilder<ButtonState>(
                    valueListenable: _pageManager.buttonNotifier,
                    builder: (context, value, child) {
                      switch (value) {
                        case ButtonState.paused:
                          return IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            onPressed: _pageManager.play,
                            icon: Icon(Icons.play_arrow),
                          );
                        case ButtonState.playing:
                          return IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            onPressed: _pageManager.pause,
                            icon: Icon(Icons.pause),
                          );
                      }
                    },
                  ),
                  IconButton(
                    iconSize: 30,
                    alignment: Alignment.centerRight,
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(Icons.skip_next),
                  ),
                  IconButton(
                    iconSize: 25,
                    alignment: Alignment.centerRight,
                    color: Colors.white,
                    onPressed: () {

                    },
                    icon: Icon(Icons.favorite),
                  ),SizedBox(
                    width: 5,
                  )
                ],
              ),
            );
          },
          openColor: Colors.white,
          closedElevation: 50.0,
          closedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          closedColor: AppColors.back,
          openBuilder: (_, closeContainer) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "TUNE " "Ax",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Gemunu',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                elevation: 0,
                backgroundColor: AppColors.back,
                leading: IconButton(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 40,
                  ),
                ),
              ),
              backgroundColor: AppColors.back,
              body: Stack(
                children: [
                  ///Play $ Pause///
                  ///Play $ Pause///
                  Positioned(
                    top: Heights - 180,
                    child: Container(
                      width: Weights,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              iconSize: 25,
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.shuffle)),
                          IconButton(
                            iconSize: 35,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.skip_previous_sharp),
                          ),
                          ValueListenableBuilder<ButtonState>(
                            valueListenable: _pageManager.buttonNotifier,
                            builder: (context, value, child) {
                              switch (value) {
                                case ButtonState.paused:
                                  return IconButton(
                                    iconSize: 35,
                                    color: Colors.white,
                                    onPressed: _pageManager.play,
                                    icon: Icon(Icons.play_arrow),
                                  );
                                case ButtonState.playing:
                                  return IconButton(
                                    iconSize: 35,
                                    color: Colors.white,
                                    onPressed: _pageManager.pause,
                                    icon: Icon(Icons.pause),
                                  );
                              }
                            },
                          ),
                          IconButton(
                            iconSize: 35,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.skip_next),
                          ),
                          IconButton(
                            iconSize: 25,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.repeat),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///Slider///
                  ///Slider///
                  ///Slider///
                  ///Slider///
                  Positioned(
                    right: 20,
                    left: 20,
                    top: Heights - 242,
                    child: ValueListenableBuilder<ProgressBarState>(
                        valueListenable: _pageManager.progressNotifier,
                        builder: (BuildContext context, value, Widget? child) {
                          return ProgressBar(
                            onSeek: _pageManager.seek,
                            progress: value.current,
                            total: value.total,
                            baseBarColor: Colors.grey,
                            progressBarColor: Colors.white,
                            thumbColor: Colors.white,
                            barHeight: 3,
                            timeLabelTextStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                height: 1.5,
                                fontFamily: "Gemunu"),
                          );
                        }),
                  ),

                  ///Favourite Container///
                  ///Favourite Container///
                  ///Favourite Container///
                  Positioned(
                    top: Heights - 320,
                    child: Container(
                      width: Weights,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            icon: Icon(Icons.volume_up),
                            onPressed: () {
                              showSliderDialog(
                                context: context,
                                title: "Adjust volume",
                                divisions: 10,
                                min: 0.0,
                                max: 1.0,
                                value: _audioPlayer.volume,
                                stream: _audioPlayer.volumeStream,
                                onChanged: _audioPlayer.setVolume,
                              );
                            },
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            iconSize: 25,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.add_outlined),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///subtitle///
                  ///subtitle///
                  ///subtitle///
                  Positioned(
                    right: 100,
                    left: 100,
                    top: Heights / 3,
                    child: Container(
                      child: Center(
                        child: Text(
                          "Selena Gomez",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 22, fontFamily: "Titil"),
                        ),
                      ),
                      height: 100,
                      width: Weights,
                    ),
                  ),

                  ///Song Title///
                  ///Song Title///
                  ///Song Title///
                  Positioned(
                    right: 20,
                    left: 20,
                    top: Heights / 3,
                    child: Container(
                      height: 25,
                      child: Center(
                        child: Marquee(
                          blankSpace: 100,
                          text:
                          'Selena Gomez - The Heart Wants What It Wants (Official Video).',
                          style: TextStyle(
                              color: Colors.white, fontSize: 20, fontFamily: "Titil"),
                        ),
                      ),
                    ),
                  ),

                  ///Icon $ Images///
                  ///Icon $ Images///
                  ///Icon $ Images///
                  Positioned(
                    right: 100,
                    left: 100,
                    top: Heights / 25,
                    child: CircleAvatar(
                      radius: 105,
                      backgroundColor: AppColors.shade,
                      child: Icon(
                        Icons.music_note_outlined,
                        size: 100,
                        color: Colors.white,
                      ),
                      // child: ClipOval(
                      //   child: Image.asset(
                      //     "Assets/Selena-Gomez-640x514.jpg",
                      //     fit: BoxFit.cover,
                      //     height: Height,
                      //     width: Width,
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),

      // child: Container(
      //   child: Row(
      //     // mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       SizedBox(
      //         width: 5,
      //       ),
      //       Container(
      //         decoration: BoxDecoration(
      //             color: AppColors.shade,
      //             borderRadius: BorderRadius.circular(50)),
      //         child: IconButton(
      //           iconSize: 30,
      //           alignment: Alignment.centerLeft,
      //           color: Colors.black,
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => MusicControll(),
      //               ),
      //             );
      //           },
      //           icon: Icon(
      //             Icons.music_note_outlined,
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         width: 5,
      //       ),
      //       Expanded(
      //         child: Marquee(
      //           blankSpace: 100,
      //           text:
      //               'Selena Gomez - The Heart Wants What It Wants (Official Video)',
      //           style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 18,
      //               fontFamily: "Titil"),
      //         ),
      //       ),
      //       // SizedBox(
      //       //   width: 5,
      //       // ),
      //       IconButton(
      //         iconSize: 30,
      //         alignment: Alignment.centerRight,
      //         color: Colors.white,
      //         onPressed: () {},
      //         icon: Icon(Icons.skip_previous_sharp),
      //       ),
      //       ValueListenableBuilder<ButtonState>(
      //         valueListenable: _pageManager.buttonNotifier,
      //         builder: (context, value, child) {
      //           switch (value) {
      //             case ButtonState.paused:
      //               return IconButton(
      //                 iconSize: 27,
      //                 color: Colors.white,
      //                 onPressed: _pageManager.play,
      //                 icon: Icon(Icons.play_arrow),
      //               );
      //             case ButtonState.playing:
      //               return IconButton(
      //                 iconSize: 27,
      //                 color: Colors.white,
      //                 onPressed: _pageManager.pause,
      //                 icon: Icon(Icons.pause),
      //               );
      //           }
      //         },
      //       ),
      //       IconButton(
      //         iconSize: 30,
      //         alignment: Alignment.centerRight,
      //         color: Colors.white,
      //         onPressed: () {},
      //         icon: Icon(Icons.skip_next),
      //       ),
      //       IconButton(
      //         iconSize: 25,
      //         alignment: Alignment.centerRight,
      //         color: Colors.white,
      //         onPressed: () {
      //           setState(() {
      //             favourite == 0 ? favourite = 1 : favourite = 0;
      //           });
      //         },
      //         icon: favourite == 0
      //             ? Icon(Icons.favorite_border)
      //             : Icon(Icons.favorite),
      //       ),SizedBox(
      //         width: 5,
      //       )
      //     ],
      //   ),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(50),
      //     color: AppColors.back,
      //   ),
      //   height: Heights,
      //   width: Weights,
      // ),
    );
  }
}