
import 'package:flutter/material.dart';

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
      child: Scaffold(appBar: AppBar(
        title: Text("Ta bbdf"),
        centerTitle: true,
        bottom: TabBar(
          tabs: [
          Tab(text: 'Tab 1',icon: Icon(Icons.home),),
          Tab(text: 'Tab 2',icon: Icon(Icons.star),),
          Tab(text: 'Tab 3',icon: Icon(Icons.person),)
        ],),
      ),
        body: TabBarView(
          children: [
            Center(child: Text("TAB+!"),),
            Center(child: Text("TAB+@"),),
            Center(child: Text("TAB+#"),),
          ],
        ),
      ),
    );
  }
}
