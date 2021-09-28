import 'package:musicplayer/colors.dart' as AppColors;
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final double Heights = MediaQuery.of(context).size.height;
    final double Weights = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.shade,
        body: Stack(
          children: [
            Positioned(
              child: Container(
                padding: EdgeInsets.only(left: 60, top: 3),
                height: Heights / 12,
                width: Weights,
                color: AppColors.shade,
                child: TextFormField(
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    // cursorHeight: 30,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow),
                        ),
                        hintText: "Search",
                        hintStyle:
                            TextStyle(fontSize: 25, color: Colors.grey))),
              ),
            ),
            Positioned(
                child: IconButton(
              padding: EdgeInsets.only(left: 10, top: 10),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            )),
            Center(
                child: Text(
              "No recent searches",
              style: TextStyle(
                  color: Colors.grey, fontSize: 17, fontFamily: "Titil"),
            ))
          ],
        ),
      ),
    );
  }
}
