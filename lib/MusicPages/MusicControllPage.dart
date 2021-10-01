import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:just_audio/just_audio.dart';
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

  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double Height = MediaQuery.of(context).size.height;
    final double Width = MediaQuery.of(context).size.width;
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
              top: Height - 200,
              child: Container(
                width: Width,
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
                    IconButton(
                      iconSize: 35,
                      color: Colors.white,
                      onPressed: () async {
                        if (play == 0) {
                          await player.setAsset('Assets/Selena2.mp3');
                          player.play();
                          setState(() {
                            play = 1;
                          });
                        } else if (play == 1) {
                          player.pause();
                          setState(() {
                            play = 0;
                          });
                        }
                      },
                      icon: play == 1
                          ? Icon(Icons.pause)
                          : Icon(Icons.play_arrow),
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
                      icon: Icon(
                        Icons.repeat,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            ///Slider///
            Positioned(
              width: Width,
              top: Height - 258,
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
            ///Favourite Container///
            ///Favourite Container///
            Positioned(
              top: Height - 320,
              child: Container(
                width: Width,
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

            ///subtitle///
            ///subtitle///
            ///subtitle///
            Positioned(
              right: 100,
              left: 100,
              top: Height / 3,
              child: Container(
                child: Center(
                  child: Text(
                    "Selena Gomez",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 22, fontFamily: "Titil"),
                  ),
                ),
                height: 100,
                width: Width,
              ),
            ),

            ///Song Title///
            ///Song Title///
            ///Song Title///
            Positioned(
              right: 20,
              left: 20,
              top: Height / 3,
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
              top: Height / 25,
              child: CircleAvatar(
                radius: 105,
                backgroundColor: AppColors.shade,
                child: Icon(
                  Icons.music_note_outlined,
                  size: 100,
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
      ),
    );
  }
}
