import 'package:flutter/material.dart';
import 'package:musicplayer/colors.dart' as AppColors;

class Settigs extends StatefulWidget {
  const Settigs({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settigs> {
  int screen = 0;
  int controllMusic = 0;

  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.back,
        appBar: AppBar(
          leading: IconButton(
            padding: EdgeInsets.only(left: 20, top: 20),
            color: Colors.white,
            alignment: Alignment.topLeft,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          backgroundColor: AppColors.back,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: Heights,
              height: Heights,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: Heights,
                width: Weights,
              ),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  color: AppColors.back,
                  padding: EdgeInsets.only(top: 100),
                  child: Center(
                    child: Text(
                      '''TUNE '''
                      '''Ax''',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          letterSpacing: 5,
                          fontFamily: 'Gemunu',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 150,
                ),
                Container(
                  color: AppColors.back,
                  padding: EdgeInsets.only(bottom: 50),
                  child: Center(
                    child: Text(
                      "settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Bebas',
                      ),
                    ),
                  ),
                  height: 100,
                ),
                // Container(
                //   // padding: EdgeInsets.only(left: 15),
                //   color:AppColors.back,
                //   height: 100,
                //   child: IconButton(color: Colors.white,
                //     alignment: Alignment.topLeft,
                //       onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_ios),),
                // ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 30,
                  child: Text(
                    "Playback",
                    style: TextStyle(
                        color: AppColors.subtitle,
                        fontSize: 18,
                        fontFamily: "Titil",
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      ListTile(
                        // dense: true,
                        title: Text(
                          "Music with screen off",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        subtitle: Text(
                          "Conect your headphone to listen to music while your screen off",
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: IconButton(
                          padding: EdgeInsets.only(right: 20),
                          icon: screen == 0
                              ? Icon(
                                  Icons.toggle_off_outlined,
                                  color: Colors.white,
                                  size: 50,
                                )
                              : Icon(
                                  Icons.toggle_on,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                          onPressed: () {
                            setState(() {
                              screen == 0 ? screen = 1 : screen = 0;
                            });
                          },
                        ),
                        onTap: () {
                          setState(() {
                            screen == 0 ? screen = 1 : screen = 0;
                          });
                        },
                      ),
                      Divider(
                        height: 10,
                        color: Colors.grey,
                      ),
                      ListTile(
                        // dense: true,
                        title: Text(
                          "Controll music from lock screen.",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        subtitle: Text(
                          "Controll music from lock screen easley.",
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: IconButton(
                          padding: EdgeInsets.only(right: 20),
                          icon: controllMusic == 0
                              ? Icon(
                                  Icons.toggle_off_outlined,
                                  color: Colors.white,
                                  size: 50,
                                )
                              : Icon(
                                  Icons.toggle_on,
                                  color: Colors.blue,
                                  size: 50,
                                ),
                          onPressed: () {
                            setState(() {
                              controllMusic == 0
                                  ? controllMusic = 1
                                  : controllMusic = 0;
                            });
                          },
                        ),
                        onTap: () {
                          setState(() {
                            controllMusic == 0
                                ? controllMusic = 1
                                : controllMusic = 0;
                          });
                        },
                      ),
                      Divider(
                        height: 10,
                        color: Colors.grey,
                      ),
                      ListTile(
                        tileColor: AppColors.shade,
                        // dense: true,
                        title: Text(
                          "Play Speed",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        subtitle: Text(
                          "Nicely adjust your speed of song.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Center(
                          child: Text(
                        ".5x",
                        style: TextStyle(color: Colors.blue),
                      )),
                      Slider(
                          min: .5,
                          max: 2,
                          label: "1",
                          divisions: 4,
                          value: 1,
                          onChanged: (context) {
                            setState(() {});
                          }),
                    ],
                  ),
                  height: 310,
                  width: Heights,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.shade),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 20),
                  height: 40,
                  child: Text(
                    "Information",
                    style: TextStyle(
                        color: AppColors.subtitle,
                        fontSize: 18,
                        fontFamily: "Titil",
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 180,
                  width: Heights,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.shade),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {
                        },
                        trailing: IconButton(
                          icon: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        title: Text(
                          "Share Tune Ax",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        subtitle: Text(
                          "Share this app to your friends.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Divider(
                        height: 10,
                        color: Colors.grey,
                      ),
                      ListTile(
                        onTap: () {
                        },
                        trailing: IconButton(
                          icon: Icon(
                            Icons.info_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        title: Text(
                          "About Tune Ax",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        subtitle: Text(
                          "Everything about Tune Ax you can read terms and conditions.",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                    child: Text(
                  "Powered by Tune Ax",
                  style: TextStyle(color:Colors.white30),
                ))
              ],
            ),

            /// shadedHolllow///
            Positioned(
              top: Heights / 2000,
              right: 0,
              left: 0,
              height: Heights / 8,
              child: Container(
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(AppColors.back, BlendMode.srcOut),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.shade,
                            backgroundBlendMode: BlendMode
                                .dstOut), // This one will handle background + difference out
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 40),
                        height: Heights,
                        width: Weights,
                        decoration: BoxDecoration(
                          color: AppColors.shade,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
