import 'package:assignment_1/chat_list.dart';
import 'package:assignment_1/chat_widget.dart';
import 'package:flutter/material.dart';

import 'Animations.dart';
import 'LargeText.dart';
import 'NavBarPage.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> names = [
    "Professor",
    "Lisbon",
    "Berlin",
    "Tokyo",
    "Rio",
    "Denver",
    'Moscow',
    "Nairobi",
    "Oslo",
    "Helsiniki",
  ];
  List<int> indexName = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    double pageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: pageHeight / 10,
        backgroundColor: const Color.fromARGB(255, 211, 198, 237),
        elevation: 0,
        centerTitle: true,
        title: const LargeText(
            mySize: 35,
            myText: "Chats",
            myColor: Color.fromRGBO(81, 19, 103, 1),
            myFontWeight: FontWeight.bold),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon:
                  const Icon(Icons.menu, color: Color.fromRGBO(81, 19, 103, 1)),
              onPressed: () {
                Navigator.push(context, FadeRoute(page: const NavBarPage()));
              },
            );
          },
        ),
      ),
      body: ListView(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[0])));
          },
          child: const MyChatWidget(
            chatIndex: 0,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[1])));
          },
          child: const MyChatWidget(
            chatIndex: 1,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[2])));
          },
          child: const MyChatWidget(
            chatIndex: 2,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[3])));
          },
          child: const MyChatWidget(
            chatIndex: 3,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[4])));
          },
          child: const MyChatWidget(
            chatIndex: 4,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[5])));
          },
          child: const MyChatWidget(
            chatIndex: 5,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[6])));
          },
          child: const MyChatWidget(
            chatIndex: 6,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[7])));
          },
          child: const MyChatWidget(
            chatIndex: 7,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[8])));
          },
          child: const MyChatWidget(
            chatIndex: 8,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, FadeRoute(page: MyChatList(name: names[9])));
          },
          child: const MyChatWidget(
            chatIndex: 9,
          ),
        ),
      ]),
    );
  }
}
