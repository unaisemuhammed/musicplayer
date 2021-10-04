import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:marquee/marquee.dart';
import 'package:musicplayer/PageManager.dart';
import 'package:musicplayer/colors.dart' as AppColors;

class MusicControll extends StatefulWidget {
  const MusicControll({Key? key}) : super(key: key);

  @override
  _MusicControllState createState() => _MusicControllState();
}

class _MusicControllState extends State<MusicControll> {
  var _audioPlayer;
  late final PageManger _pageManager;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageManager = PageManger();
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
              top: Height - 180,
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
              top: Height - 242,
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
      ),
    );
  }
}

void showSliderDialog({
  required BuildContext context,
  required String title,
  required int divisions,
  required double min,
  required double max,
  String valueSuffix = '',
  // TODO: Replace these two by ValueStream.
  required double value,
  required Stream<double> stream,
  required ValueChanged<double> onChanged,
}) {
  showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: StreamBuilder<double>(
        stream: stream,
        builder: (context, snapshot) => Container(
          height: 100.0,
          child: Column(
            children: [
              Text('${snapshot.data?.toStringAsFixed(1)}$valueSuffix',
                  style: TextStyle(
                      fontFamily: 'Fixed',
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0)),
              Slider(
                divisions: divisions,
                min: min,
                max: max,
                value: snapshot.data ?? value,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
