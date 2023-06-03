import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:akshat_navbar/carousel.dart';
import 'package:akshat_navbar/settings.dart';
import 'package:akshat_navbar/chat.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _selectedindex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  List pages = [const HomePage(), const ChatPage(), const Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        backgroundColor: const Color(0xFFDC861A),
        title: const Text(
          'HashApp',
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        leading: Builder(
          builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        actions: const [
          Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
          child: Container(
        padding: const EdgeInsets.only(top: 30),
        color: const Color(0xFFFFF8ED),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Color(0xFFDC861A),
              ),
              title: const Text('Settings',
                  style: TextStyle(
                      color: Color(0xFFDC861A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.help_outlined,
                color: Color(0xFFDC861A),
              ),
              title: const Text('Support',
                  style: TextStyle(
                      color: Color(0xFFDC861A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.star,
                color: Color(0xFFDC861A),
              ),
              title: const Text('Rate',
                  style: TextStyle(
                      color: Color(0xFFDC861A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.arrow_back,
                color: Color(0xFFDC861A),
              ),
              title: const Text('Back',
                  style: TextStyle(
                      color: Color(0xFFDC861A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      )),
      body: pages[_selectedindex],
      bottomNavigationBar: Container(
        color: const Color(0xFFDC861A),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            selectedIndex: _selectedindex,
            onTabChange: _navigateBottomBar,
            backgroundColor: const Color(0xFFDC861A),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color(0xFFDC861A),
            gap: 8,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.chat_bubble_outline_rounded,
                text: 'Chats',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
