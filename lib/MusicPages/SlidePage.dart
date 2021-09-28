import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:musicplayer/MusicPages/SettingsPage.dart';
import 'FavouritePage.dart';
import 'FolderPage.dart';
import 'MusicControllPage.dart';
import 'PlaylistPage.dart';
import 'SearchPage.dart';
import 'TrackPage.dart';
import 'package:musicplayer/colors.dart' as AppColors;
import 'package:scroll_snap_list/scroll_snap_list.dart';

var _pages = [Playlist(), Track(), Favourite(), Folder()];

class SlidePage extends StatefulWidget {
  const SlidePage({Key? key}) : super(key: key);

  @override
  _SlidePageState createState() => _SlidePageState();
}

class _SlidePageState extends State<SlidePage> {
  int play = 0;
  int favourite = 0;

  TextEditingController playlistController = TextEditingController();
  int _selectedItem = 0;
  var _pageController = PageController();
  var _menuController = ScrollController();
  List Title = ["Playlist", "Track", "Favourite", "Folder"];

  ///ScrollBar///
  Widget _buildItemList(BuildContext context, int index) {
    return Column(
      children: [
        Container(
          color: AppColors.back,
          width: 100,
          height: 40,
          child: Center(
            child: Text(
              "${Title[index]}",
              style: TextStyle(
                  fontSize: 25, color: Colors.white, fontFamily: "Titil"),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.back,
        appBar: AppBar(
          toolbarHeight: 50,
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
                        backgroundColor: AppColors.back,
                      );
                    });
                print(playlistController);
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
          backgroundColor: AppColors.back,
        ),

        ///PageView///
        body: Stack(
          children: [
            PageView(
              children: _pages,
              onPageChanged: (index) {
                setState(() {
                  _selectedItem = index;
                });
              },
              controller: _pageController,
            ),

            /// ///////MusicBottomBar/////// ///
            Positioned(
              bottom: Heights / 100,
              right: 0,
              left: 0,
              height: Heights / 13,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MusicControll(),
                      ));
                },
                child: Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.shade,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          iconSize: 30,
                          alignment: Alignment.centerLeft,
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MusicControll(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.music_note_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Marquee(
                          blankSpace: 100,
                          text:
                              'Selena Gomez - The Heart Wants What It Wants (Official Video)',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "Titil"),
                        ),
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      IconButton(
                        iconSize: 30,
                        alignment: Alignment.centerRight,
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.skip_previous_sharp),
                      ),
                      IconButton(
                        iconSize: 30,
                        alignment: Alignment.centerRight,
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            play == 0 ? play = 1 : play = 0;
                          });
                        },
                        icon: play == 0
                            ? Icon(Icons.play_arrow)
                            : Icon(Icons.pause),
                      ),
                      IconButton(
                        iconSize: 30,
                        alignment: Alignment.centerRight,
                        color: Colors.white,
                        onPressed: () {},
                        icon: Icon(Icons.skip_next),
                      ),
                      IconButton(
                        iconSize: 25,
                        alignment: Alignment.centerRight,
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            favourite == 0 ? favourite = 1 : favourite = 0;
                          });
                        },
                        icon: favourite == 0
                            ? Icon(Icons.favorite_border)
                            : Icon(Icons.favorite),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.back,
                  ),
                  height: Heights,
                  width: Weights,
                ),
              ),
            ),

            ///ShadedPart///
            Positioned(
              top: Heights / 4000,
              right: 0,
              left: 0,
              height: Heights / 8,
              child: Container(
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(AppColors.back, BlendMode.srcOut),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.shade,
                            backgroundBlendMode: BlendMode
                                .dstOut), // This one will handle background + difference out
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 70),
                        height: Heights,
                        width: Weights,
                        decoration: BoxDecoration(
                          color: AppColors.shade,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///ScrollTitleBar////
            Positioned(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                height: 40,
                color: AppColors.back,
                child: Center(
                  child: Column(
                    children: [
                      Expanded(
                        child: ScrollSnapList(
                          curve: Curves.ease,
                          focusOnItemTap: true,
                          itemBuilder: _buildItemList,
                          itemSize: 100,
                          dynamicItemSize: true,
                          itemCount: _pages.length,
                          // focusToItem: (index) {
                          //
                          //   setState(() {
                          //     listController: _menuController;
                          //    // index= _selectedItem;
                          //   });
                          // },
                          onItemFocus: (index) {
                            setState(() {
                              _selectedItem = index;
                              _pageController.animateToPage(_selectedItem,
                                  duration: Duration(milliseconds: 400),
                                  curve: Curves.linear);
                            });
                          },

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
