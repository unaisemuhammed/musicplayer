
import 'package:flutter/material.dart';
import 'package:musicplayer/MusicPages/FavouritePage.dart';
import 'package:musicplayer/MusicPages/PlaylistPage.dart';
import 'package:musicplayer/MusicPages/TrackPage.dart';

import 'MusicPages/SearchPage.dart';
import 'MusicPages/SettingsPage.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(appBar:  AppBar(
        bottom: TabBar(
          tabs: [
            Tab(text: 'Tab 1'),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3')
          ],),
        toolbarHeight: 110,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "Create Playlist",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontFamily: "Titil",
                            fontWeight: FontWeight.w700),
                      ),
                      content: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Titil"),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Create",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Titil"),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.black,
                    );
                  });
            },
            icon: Icon(Icons.playlist_add),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Search(),
                ),
              );
            },
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settigs(),
                  ),
                );
              },
              icon: Icon(Icons.settings),
              iconSize: 25),
        ],
        title: Text(
          "TUNE " "Ax",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Gemunu',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor:Colors.black,
      ),
        body: TabBarView(
          children: [
          Playlist(),Favourite(),Track()
          ],
        ),
      ),
    );
  }
}
