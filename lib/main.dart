import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'MusicPages/SlidePage.dart';
import 'package:musicplayer/colors.dart' as AppColors;


Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.back,
        body: SlidePage(),
      ),
    );
  }
}
