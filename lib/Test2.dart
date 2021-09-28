import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  List Title = ["Playlist", "Track", "Favourite", "Favourite", "Favourite"];

  Widget _buildItemList(BuildContext context, int index) {
    if (index == Title.length)
      return Center(
        child: CircularProgressIndicator(),
      );
    return Column(
      children: [
        Container(
          color: Colors.red,
          width: 150,
          height: 40,
          child: Center(
            child: Text(
              "${Title[index]}",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 40,
          color: Colors.green,
          child: Column(
            children: [
              Expanded(
                child: ScrollSnapList(
                  itemBuilder: _buildItemList,
                  itemSize: 150,
                  dynamicItemSize: true,
                  itemCount: Title.length,
                  onItemFocus: (int) {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
