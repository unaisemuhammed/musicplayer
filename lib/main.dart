import 'package:flutter/material.dart';
import 'MusicPages/SlidePage.dart';
import 'package:musicplayer/colors.dart' as AppColors;

import 'MusicPages/service_Locator.dart';


void main()async {
  await setupServiceLocator();
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
