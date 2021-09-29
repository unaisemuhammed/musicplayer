import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Test2 extends StatefulWidget {
  const Test2({Key? key}) : super(key: key);

  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Positioned(
          child: Center(
              child: Text(
            "UNAIse",
            style: TextStyle(fontSize: 50),
          )),
        ),




        Positioned(
          child: ColorFiltered(
            colorFilter:
                ColorFilter.mode(Colors.blueAccent, BlendMode.srcOut),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        backgroundBlendMode: BlendMode.srcIn), // This one will handle background + difference out
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 200),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
