
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:musicplayer/db/Favourite/helper.dart';
import 'package:musicplayer/servicer.dart';
import 'MusicPages/SlidePage.dart';
import 'package:musicplayer/colors.dart' as AppColors;

Future<void> main() async {
  await setupServiceLocator();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
