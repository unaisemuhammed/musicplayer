import 'package:flutter/material.dart';
import 'package:musicplayer/colors.dart' as AppColors;

class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);

  @override
  _TrackState createState() => _TrackState();
}

class _TrackState extends State<Track> {
  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.back,
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: Heights * .1,
              height: Heights,
              child: Container(
                child: Center(
                    child: Text(
                  "No track found.",style: TextStyle(color: Colors.grey),
                )),
                decoration: BoxDecoration(
                  color: AppColors.shade,
                ),
                height: Heights,
                width: Width,
              ),
            ),
            // Positioned(
            //   top: Heights * .1,
            //   child: Container(
            //     height: 100,
            //     width: 200,
            //     color: Colors.red,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
