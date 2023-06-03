import 'package:assignment_1/LargeText.dart';
import 'package:assignment_1/chat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Animations.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_onScroll);
    super.initState();
  }

  double _scrollOffset = 0.0;
  final double layer1speed = 0.5;
  final double layer2speed = 0.45;
  final double layer3speed = 0.40;
  final double layer4speed = 0.375;
  final double layer5speed = 0.365;

  void _onScroll() {
    setState(() {
      _scrollOffset = _scrollController.offset;
    });
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(95, 203, 160, 1),
                    Color.fromRGBO(81, 216, 221, 1),
                  ],
                ),
              ),
            ),
            Positioned(
                top: screenSize.height / 1.5,
                left: screenSize.width / 10,
                child: LargeText(
                    mySize: (_scrollOffset) / 12 + 36,
                    myText: "Journey\nInto the UNKNOWN",
                    myColor: Colors.black87,
                    myFontWeight: FontWeight.bold)),
            Positioned(
              top: _scrollOffset * layer1speed + screenSize.height / 3,
              right: 0,
              left: 0,
              child: SvgPicture.asset("assets/SVG/sun.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer1speed + screenSize.height / 10,
              right: 0,
              left: 0,
              child: SvgPicture.asset("assets/SVG/stars.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer2speed + screenSize.height / 2,
              left: screenSize.width / 3,
              right: 0,
              child: SvgPicture.asset("assets/SVG/crows.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer2speed + screenSize.height,
              left: 0,
              child: SvgPicture.asset("assets/SVG/img1_left.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer2speed + screenSize.height,
              right: 0,
              child: SvgPicture.asset("assets/SVG/img2_right.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer3speed + screenSize.height,
              right: 0,
              child: SvgPicture.asset("assets/SVG/img3_right.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer3speed + screenSize.height,
              left: 0,
              child: SvgPicture.asset("assets/SVG/img4_left.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer4speed + screenSize.height,
              right: 0,
              child: SvgPicture.asset("assets/SVG/img5_right.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer5speed + screenSize.height,
              left: 0,
              child: SvgPicture.asset("assets/SVG/side_left.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer5speed + screenSize.height,
              right: 0,
              child: SvgPicture.asset("assets/SVG/side_right.svg"),
            ),
            Positioned(
              top: _scrollOffset * layer5speed + screenSize.height,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/SVG/human.svg"),
            ),
            Positioned(
              top: screenSize.height * 1.24 + _scrollOffset * layer5speed,
              left: 0,
              right: 0,
              child: Container(
                width: screenSize.width,
                height: screenSize.height * 3,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(45, 66, 80, 1)),
                child: Column(
                  children: [
                    SizedBox(height: screenSize.height / 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: LargeText(
                            mySize: 36 + _scrollOffset / 60,
                            myText: "Welcome\nto Mystery",
                            myColor: const Color.fromARGB(255, 83, 221, 193),
                            myFontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: screenSize.height / 10),
                    Container(
                      height: screenSize.height / 3,
                      width: screenSize.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(95, 203, 160, 1),
                      ),
                      child: GestureDetector(
                        onDoubleTap: () {
                          Navigator.push(
                              context,
                              FadeRoute(
                                  page: MyChatList(
                                name: 'Mystery',
                              )));
                        },
                        child: const Center(
                            child: LargeText(
                                mySize: 32,
                                myText: "Double Tap\n\t\tto Chats",
                                myColor: Colors.black,
                                myFontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
