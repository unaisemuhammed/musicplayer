import 'package:flutter/material.dart';
import 'package:musicplayer/colors.dart' as AppColors;

class Folder extends StatefulWidget {
  const Folder({Key? key}) : super(key: key);

  @override
  _FolderState createState() => _FolderState();
}

class _FolderState extends State<Folder> {
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
                decoration: BoxDecoration(
                    // color: AppColors.shade,
                    color: AppColors.shade),
                height: Heights,
                width: Weights,
              ),
            ),

            // Positioned(
            //     top: Heights * .1,
            //     child: Container(
            //       height: 100,
            //       width: 200,
            //       color: Colors.red,
            //     ))
          ],
        ),
      ),
    );
    ;
  }
}
