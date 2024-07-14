import 'package:flutter/material.dart';
import 'package:whatsappclone/CustomUI/CustomCard.dart';
import 'package:whatsappclone/Model/ChatModel.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {

  List<ChatModel> chats = [
    ChatModel(name: "Shashi Sah", icon: "person.svg", isGroup: false, time: "4:00", currentMessage: "Hello Everyone"),
    ChatModel(name: "Rocky Sah", icon: "person.svg", isGroup: false, time: "15:00", currentMessage: "Hello Shashi"),
    ChatModel(name: "william", icon: "person.svg", isGroup: false, time: "16:00", currentMessage: "Hy Harish"),
    ChatModel(name: "Dev Comm", icon: "groups.svg", isGroup: true, time: "5:00", currentMessage: "Hello Everyone on this group"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index] ,),
      ),
    );
  }
}
