import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  State<Settings> createState() => _Settings();
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const Icon(
            Icons.key,
            color: Color(0xFF3D2406),
          ),
          title: const Text('Account',
              style: TextStyle(color: Color(0xFF3D2406), fontSize: 20)),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.lock,
            color: Color(0xFF3D2406),
          ),
          title: const Text('Privacy',
              style: TextStyle(color: Color(0xFF3D2406), fontSize: 20)),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.chat,
            color: Color(0xFF3D2406),
          ),
          title: const Text('Chats',
              style: TextStyle(color: Color(0xFF3D2406), fontSize: 20)),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.notifications,
            color: Color(0xFF3D2406),
          ),
          title: const Text('Notifications',
              style: TextStyle(
                color: Color(0xFF3D2406),
                fontSize: 20,
              )),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.data_saver_off_rounded,
            color: Color(0xFF3D2406),
          ),
          title: const Text('Storage and Data',
              style: TextStyle(color: Color(0xFF3D2406), fontSize: 20)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.help,
            color: Color(0xFF3D2406),
          ),
          title: const Text('Help',
              style: TextStyle(color: Color(0xFF3D2406), fontSize: 20)),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
