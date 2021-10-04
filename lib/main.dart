import 'package:flutter/material.dart';
import 'package:musicplayer/MusicPages/MusicControllPage.dart';
import 'MusicPages/SlidePage.dart';
import 'package:musicplayer/colors.dart' as AppColors;


void main() {
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
