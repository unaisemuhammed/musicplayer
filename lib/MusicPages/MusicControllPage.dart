import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:musicplayer/colors.dart' as AppColors;

class MusicControll extends StatefulWidget {
  const MusicControll({Key? key}) : super(key: key);

  @override
  _MusicControllState createState() => _MusicControllState();
}

class _MusicControllState extends State<MusicControll> {
  int play = 0;
  int favourite = 0;
  int shuffle = 0;
  int repeat = 0;

  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
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
          actions: [
            // Padding(
            //   padding: EdgeInsets.only(right:Weights/10,top:20),
            //   child: Text(
            //     "TUNE " "Ax",
            //     style: TextStyle(
            //         fontSize: 25,
            //         fontFamily: 'Gemunu',
            //         fontWeight: FontWeight.bold),
            //   ),
            // ),
          ],
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
            Positioned(
              top: Heights - 200,
              child: Container(
                width: Weights,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///Last Play Container///
                    IconButton(
                      iconSize: 25,
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          shuffle == 0 ? shuffle = 1 : shuffle = 0;
                        });
                      },
                      icon: shuffle == 0
                          ? Icon(Icons.shuffle)
                          : Icon(
                              Icons.shuffle,
                              color: Colors.cyanAccent,
                            ),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    IconButton(
                      iconSize: 35,
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(Icons.skip_previous_sharp),
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    IconButton(
                      iconSize: 35,
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          play == 0 ? play = 1 : play = 0;
                        });
                      },
                      icon: play == 0
                          ? Icon(Icons.play_arrow)
                          : Icon(Icons.pause),
                    ),
                    // SizedBox(
                    //   width: 30,
                    // ),
                    IconButton(
                      iconSize: 35,
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(Icons.skip_next),
                    ),
                    // SizedBox(
                    //   width: 20,
                    // ),
                    IconButton(
                      iconSize: 25,
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          repeat == 0 ? repeat = 1 : repeat = 0;
                        });
                      },
                      icon: repeat == 0
                          ? Icon(Icons.repeat_one)
                          : Icon(
                              Icons.repeat,
                            ),
                    ),
                  ],
                ),
              ),
            ),

            ///Seak container///
            Positioned(
              width: Weights,
              top: Heights - 258,
              child: Slider(
                  activeColor: Colors.white,
                  min: .5,
                  max: 5,
                  label: "1",
                  value: 1,
                  onChanged: (context) {
                    setState(() {});
                  }),
            ),

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
                      onPressed: () {},
                      icon: Icon(Icons.volume_down_outlined),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(
                      iconSize: 25,
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          favourite == 0 ? favourite = 1 : favourite = 0;
                        });
                      },
                      icon: favourite == 0
                          ? Icon(Icons.favorite_border)
                          : Icon(Icons.favorite),
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
            Positioned(
              right: 100,
              left: 100,
              top: Heights / 3,
              child: Container(
                child: Center(
                  child: Text("Selena Gomez",style: TextStyle(
                      color: Colors.grey, fontSize: 22, fontFamily: "Titil"),),
                ),
                height: 100,
                width: Weights,
              ),
            ),
            Positioned(
              right: 20,
              left: 20,
              top: Heights/3,
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
            Positioned(
              right: 100,
              left: 100,
              top: Heights / 15,
              child: Container(
                child: Icon(
                  Icons.music_note_outlined,
                  size: 150,
                  color: Colors.grey,
                ),
                height: Heights / 4,
                width: Weights / 4,
                decoration: BoxDecoration(
                    color: AppColors.shade,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
