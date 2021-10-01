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
        body: Container(
          padding: EdgeInsets.all(15),
          child: GridView.count(
            mainAxisSpacing: 15,
            crossAxisSpacing: 20,
            crossAxisCount: 3,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: Heights / 8,
                    width: Weights,
                    child: Icon(
                      Icons.music_note_outlined,
                      size: 60,
                      color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.back,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Text(
                    "English Song",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: Heights / 8,
                    width: Weights,
                    child: Icon(
                      Icons.music_note_outlined,
                      size: 60,
                      color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.back,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Text(
                    "My Favourite",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: Heights / 8,
                    width: Weights,
                    child: Icon(
                      Icons.music_note_outlined,
                      size: 60,
                      color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.back,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Text(
                    "Hindi Song",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: Heights / 8,
                    width: Weights,
                    child: Icon(
                      Icons.music_note_outlined,
                      size: 60,
                      color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.back,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Text(
                    "Liked Song",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: Heights / 8,
                    width: Weights,
                    child: Icon(
                      Icons.music_note_outlined,
                      size: 60,
                      color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                        color: AppColors.back,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Text(
                    "Selected Song",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
              // color:AppColors.shade,
              color: AppColors.shade),
          height: Heights,
          width: Weights,
        ),
      ),
    );
  }
}
