import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget{
  Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin{
  late TabController _controller;
  @override

  void initState(){
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Clone"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}) ,
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {},),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camera"),
          Text("CHATS"),
          Text("STATUS"),
          Text("CALLS"),
        ],
      ),
    );
  }
}

