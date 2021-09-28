import 'package:flutter/material.dart';
import 'package:musicplayer/colors.dart' as AppColors;

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
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
                  child: Text("Create some playlists,and they'll appear here.",style: TextStyle(color: Colors.grey),),
                ),
                decoration: BoxDecoration(
                    // color:AppColors.shade,
                    color: AppColors.shade),
                height: Heights,
                width: Weights,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
