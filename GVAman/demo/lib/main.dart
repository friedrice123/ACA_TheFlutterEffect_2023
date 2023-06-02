import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgLocal = [
  'assets/photos/forest1.jpeg',
  'assets/photos/forest2.jpeg',
  'assets/photos/forest3.jpeg',
  'assets/photos/forest4.jpeg',
  'assets/photos/forest5.jpeg',
  'assets/photos/forest6.jpeg',
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Forest',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(0, 0, 0, 0),
      body: Body(),
      bottomNavigationBar: NavBar(),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey.withOpacity(0.5),
            color: Colors.white,
            tabs: const [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.heart,
                text: 'Likes',
              ),
              GButton(
                icon: LineIcons.search,
                text: 'Search',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.menu,
          ),
          title: Center(
            child: Text("Hola"),
          ),
          backgroundColor: Colors.black),
      body: listView(),
      backgroundColor: Colors.brown[400],
    );
  }

  ListView listView() {
    return ListView(
      padding: const EdgeInsets.only(top: 0),
      shrinkWrap: true,
      children: [
        Carousel_Slider(),
        Like_Buttons(),
        buildCards('assets/img/img1.jpeg'),
        buildCards('assets/img/img2.jpeg'),
        buildCards('assets/img/img3.jpeg'),
        buildCards('assets/img/img4.jpeg'),
        buildCards('assets/img/img5.jpeg'),
        buildCards('assets/img/img6.jpeg'),
        buildCards('assets/img/img7.jpeg'),
        buildCards('assets/img/img8.jpeg'),
        buildCards('assets/img/img9.jpeg'),
      ],
    );
  }
}

Widget buildImage(String img) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      color: Colors.brown,
      child: Image.asset(
        img,
        fit: BoxFit.cover,
      ),
    );

Widget buildCards(String img) => Container(
        child: Card(
      color: Colors.brown,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(children: [
            Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  img,
                  width: 100,
                  height: 80,
                )),
            const Text('Bike',
                style: TextStyle(
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'Futura',
                    fontSize: 25)),
          ]),
        ],
      ),
    ));

Widget Carousel_Slider() => CarouselSlider.builder(
      options: CarouselOptions(height: 400),
      itemCount: imgLocal.length,
      itemBuilder: (context, index, realIndex) {
        final img = imgLocal[index];
        return buildImage(img);
      },
    );

Widget Like_Buttons() => GNav(
        rippleColor: Colors.grey[300]!,
        hoverColor: Colors.grey[100]!,
        gap: 8,
        activeColor: Colors.white,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        duration: const Duration(milliseconds: 400),
        tabBackgroundColor: Colors.grey.withOpacity(0.5),
        color: Colors.white,
        tabs: const [
          GButton(
            icon: Icons.thumb_up_outlined,
          ),
          GButton(
            icon: Icons.thumb_down_outlined,
          ),
        ]);
