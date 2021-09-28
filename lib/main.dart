import 'package:flutter/material.dart';
import 'package:musicplayer/Test2.dart';
import 'MusicPages/SlidePage.dart';
import 'package:musicplayer/colors.dart' as AppColors;

import 'Testing.dart';

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
