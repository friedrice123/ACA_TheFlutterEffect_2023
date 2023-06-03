import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData.light(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEEAE6),
        title: const Text(
          'AppBar Page',
          style: TextStyle(color: Colors.black),
        ),
        leading: Builder(
          builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        actions: const [
          Icon(
            Icons.notifications_none,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
      ),
      drawer: Drawer(
          child: Container(
        padding: const EdgeInsets.only(top: 30),
        color: const Color(0xFFFEEAE6),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.favorite,
              ),
              title: const Text('Favorite',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
              ),
              title: const Text('Setting',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.dark_mode,
              ),
              title: const Text('Dark Mode',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.arrow_back,
              ),
              title: const Text('Back',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )),
      body: Container(),
    );
  }
}
