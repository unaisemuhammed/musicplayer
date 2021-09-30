import 'package:flutter/material.dart';
import 'package:musicplayer/colors.dart' as AppColors;

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  int  favourite=0;
  @override
  Widget build(BuildContext context) {

    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.back,
        body: Container(
        padding: EdgeInsets.only(bottom: 60),
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                ),
              ),
              Divider(
                height: 0,
                indent: 85,
                color: Colors.grey,
              ),ListTile(
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
                  width: Weights / 8,
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
                trailing:IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      favourite == 0 ? favourite = 1 : favourite = 0;
                    });
                  },
                  icon: favourite == 0
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
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
              // color: AppColors.shade,
              color: AppColors.shade),
          height: Heights,
          width: Weights,
        ),
      ),
    );
  }
}
