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
        body: Container(
          padding: EdgeInsets.only(bottom: 60),
          // child: Center(
          //     child: Text(
          //   "No track found.",style: TextStyle(color: Colors.grey),
          // )),
          child: ListView(
            children: [
              ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),  ListTile(
                // dense: true,
                leading: Container(
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.back,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10)),
                  width: Width / 8,
                  height: Heights / 14,
                ),
                title: Text(
                  "Ariana Grande - 7 rings (Official Video)",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  overflow: TextOverflow.ellipsis,maxLines: 1,
                ),subtitle: Text(
                "ariana Grande",
                style: TextStyle(color: Colors.grey),
              ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: AppColors.shade,
          ),
          height: Heights,
          width: Width,
        ),
      ),
    );
  }
}
