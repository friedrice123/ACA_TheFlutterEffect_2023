import 'dart:async';

import 'package:assignment_1/my_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'Animations.dart';
import 'LargeText.dart';
import 'ChatPage.dart';

class MyChatList extends StatefulWidget {
  final String name;
  MyChatList({Key? key, required this.name}) : super(key: key);

  @override
  State<MyChatList> createState() => _MyChatListState();
}

class _MyChatListState extends State<MyChatList> {
  List<types.Message> messages = [];
  final user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

  void _addMessage(types.Message message) {
    setState(() {
      messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: "id",
      text: message.text,
    );

    _addMessage(textMessage);

    if (textMessage.text.toLowerCase() == 'mystery' ||
        textMessage.text.toLowerCase() == 'tousif' ||
        textMessage.text.toLowerCase() == 'tousif ahamad') {
      FocusManager.instance.primaryFocus?.unfocus();
      Timer(const Duration(milliseconds: 1000), () {
        Navigator.push(context, FadeRoute(page: const MyPage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double pageHeight = MediaQuery.of(context).size.height;

    // This code mostly is written by taking reference from the examples given for the package
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: pageHeight / 10,
        backgroundColor: const Color.fromRGBO(29, 28, 32, 1),
        elevation: 0,
        centerTitle: true,
        title: LargeText(
          mySize: 35,
          myText: widget.name,
          myColor: Colors.white,
          myFontWeight: FontWeight.bold,
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  FadeRoute(page: const ChatPage()),
                );
              },
            );
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: Chat(
        messages: messages,
        onSendPressed: _handleSendPressed,
        user: user,
        // Do something on that tap functions here
        onMessageLongPress: (context, p1) {},
        theme: const DefaultChatTheme(
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
