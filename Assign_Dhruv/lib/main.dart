


import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scaffold',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<ChatPreview> chatPreviews = [
    ChatPreview(
      image: 'assets/images/image_3.jpg',
      name: 'John Doe',
      isLiked: false,
      isShared: false,
    ),
    ChatPreview(
      image: 'assets/images/image_2.jpg',
      name: 'Jane Smith',
      isLiked: false,
      isShared: false,
    ),
    ChatPreview(
      image: 'assets/images/image_3.jpg',
      name: 'Mike Johnson',
      isLiked: false,
      isShared: false,
    ),
  ];

  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _toggleLike(int index) {
    setState(() {
      chatPreviews[index].isLiked = !chatPreviews[index].isLiked;
    });
  }

  void _toggleShare(int index) {
    setState(() {
      chatPreviews[index].isShared = !chatPreviews[index].isShared;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Bonzure')),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Handle the menu button click
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: chatPreviews.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = chatPreviews[index];

          return GestureDetector(
            onTap: () {
              // Handle chat preview tap, e.g., navigate to chat screen
            },
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Image.asset(
                    chat.image,
                    width: 100.0,
                    height: 100.0,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(chat.name),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => _toggleLike(index),
                            style: ElevatedButton.styleFrom(
                              primary: chat.isLiked ? Colors.pink : Colors.blue,
                            ),
                            child: Icon(Icons.favorite),
                          ),
                          SizedBox(width: 10.0),
                          ElevatedButton(
                            onPressed: () => _toggleShare(index),
                            style: ElevatedButton.styleFrom(
                              primary: chat.isShared ? Colors.pink : Colors.blue,
                            ),
                            child: Icon(Icons.share),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.pinkAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ChatPreview {
  final String image;
  final String name;
  bool isLiked;
  bool isShared;
  

  ChatPreview({
    required this.image,
    required this.name,
    this.isLiked = false,
    this.isShared = false,
    });
}
