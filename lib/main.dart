// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData.light(),
      title: 'PHOTOGRAPHY',
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  Widget file1 = Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
    width: 140,
    height: 140,
    child: Column(
      children: [
        Image.asset('tiger.jpeg'),
        SizedBox(height: 5),
        Text(
          'Tigers',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.pink[200],
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[300],
                size: 16,
              ),
              Icon(
                Icons.share,
                color: Colors.black12,
                size: 16,
              ),
              Icon(
                Icons.download,
                color: Colors.black12,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget file2 = Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
    width: 120,
    height: 140,
    child: Column(
      children: [
        Image.asset('leopard1.jpg'),
        SizedBox(height: 5),
        Text(
          'Leopards',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.pink[200],
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[300],
                size: 16,
              ),
              Icon(
                Icons.share,
                color: Colors.black12,
                size: 16,
              ),
              Icon(
                Icons.download,
                color: Colors.black12,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget file3 = Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
    width: 140,
    height: 160,
    child: Column(
      children: [
        Image.asset('cheetah.jpeg'),
        SizedBox(height: 5),
        Text(
          'Cheetahs',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.pink[200],
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[300],
                size: 16,
              ),
              Icon(
                Icons.share,
                color: Colors.black12,
                size: 16,
              ),
              Icon(
                Icons.download,
                color: Colors.black12,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget file4 = Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
    width: 117.5,
    height: 160,
    child: Column(
      children: [
        Image.asset('lion2.jpeg'),
        SizedBox(height: 5),
        Text(
          'Lions',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.pink[200],
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[300],
                size: 16,
              ),
              Icon(
                Icons.share,
                color: Colors.black12,
                size: 16,
              ),
              Icon(
                Icons.download,
                color: Colors.black12,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget tile1 = Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
    width: 160,
    height: 120,
    child: Column(
      children: [
        Image.asset('italy.webp'),
        SizedBox(height: 5),
        Text(
          'Italy',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.pink[200],
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[300],
                size: 16,
              ),
              Icon(
                Icons.share,
                color: Colors.black12,
                size: 16,
              ),
              Icon(
                Icons.download,
                color: Colors.black12,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget tile2 = Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
    width: 143,
    height: 160,
    child: Column(
      children: [
        Image.asset('paris.jpeg'),
        SizedBox(height: 5),
        Text(
          'Paris',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.pink[200],
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[300],
                size: 16,
              ),
              Icon(
                Icons.share,
                color: Colors.black12,
                size: 16,
              ),
              Icon(
                Icons.download,
                color: Colors.black12,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget tile3 = Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
    width: 143,
    height: 160,
    child: Column(
      children: [
        Image.asset('spain.jpeg'),
        SizedBox(height: 5),
        Text(
          'Spain',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.pink[200],
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[300],
                size: 16,
              ),
              Icon(
                Icons.share,
                color: Colors.black12,
                size: 16,
              ),
              Icon(
                Icons.download,
                color: Colors.black12,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget tile4 = Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
    width: 148,
    height: 160,
    child: Column(
      children: [
        Image.asset('dubai.jpeg'),
        SizedBox(height: 5),
        Text(
          'Dubai',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w100,
            color: Colors.pink[200],
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[300],
                size: 16,
              ),
              Icon(
                Icons.share,
                color: Colors.black12,
                size: 16,
              ),
              Icon(
                Icons.download,
                color: Colors.black12,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget textsection = Center(
    child: Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        """Photography is the art, application, and practice of creating durable images by recording light, either electronically by means of an image sensor, or chemically by means of a light-sensitive material such as photographic film.""",
        softWrap: true,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w200,
          color: Colors.blueGrey,
        ),
      ),
    ),
  );

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      drawerEnableOpenDragGesture: false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        title: const Text(
          'Photography',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        actions: const [
          Icon(
            Icons.notifications_none,
            color: Color.fromARGB(255, 210, 118, 139),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.search,
              color: Color.fromARGB(255, 210, 118, 139),
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Color.fromARGB(255, 210, 118, 139),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          color: Colors.cyan[50],
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.favorite,
                ),
                title: const Text('Favorite',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: Colors.black12,
              ),
              ListTile(
                leading: const Icon(
                  Icons.share,
                ),
                title: const Text('Share',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: Colors.black12,
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                ),
                title: const Text('Settings',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: Colors.black12,
              ),
              ListTile(
                leading: const Icon(
                  Icons.star_rate,
                ),
                title: const Text('Rate',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: Colors.black12,
              ),
              ListTile(
                leading: const Icon(
                  Icons.dark_mode,
                ),
                title: const Text('Dark Mode',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                onTap: () {},
                hoverColor: Colors.black12,
              ),
              ListTile(
                leading: const Icon(
                  Icons.arrow_back_ios,
                ),
                title: const Text('Back',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                onTap: () {
                  Navigator.pop(context);
                },
                hoverColor: Colors.black12,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset('nature.jpg'),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 97),
                alignment: Alignment.center,
                child: Text(
                  'PHOTOGRAPHY',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ],
          ),

          textsection,

          /*Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'NATURE',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 93, 245, 113),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),*/

          CarouselSlider(
            items: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://artisanhd.com/wp-content/uploads/2018/08/landscape-photography-blog-main-artisanhd.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    alignment: Alignment.center,
                    child: Text(
                      'Mountains',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 50,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://photographylife.com/wp-content/uploads/2021/07/Sunset-Near-Crater-Lake.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    alignment: Alignment.center,
                    child: Text(
                      'Sunset',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 50,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://i0.wp.com/photofocus.com/wp-content/uploads/2021/07/Cover-1-scaled.jpg?resize=2560%2C1440&ssl=1"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    alignment: Alignment.center,
                    child: Text(
                      'Beach',
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: 50,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ],
            options: CarouselOptions(
              height: 260.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 10,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 900),
              viewportFraction: 0.8,
            ),
          ),

          SizedBox(height: 5),
          // ignore: sized_box_for_whitespace

          // ignore: prefer_const_constructors
          Text(
            '  Cities',
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w200, color: Colors.black),
          ),

          SizedBox(height: 5),

          SizedBox(
            height: 175,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 12),
                tile1,
                SizedBox(width: 12),
                tile2,
                SizedBox(width: 12),
                tile3,
                SizedBox(width: 12),
                tile4,
              ],
            ),
          ),

          Text(
            '  WildLife',
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w200, color: Colors.black),
          ),

          SizedBox(height: 5),

          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 12),
                file1,
                SizedBox(width: 12),
                file2,
                SizedBox(width: 12),
                file3,
                SizedBox(width: 12),
                file4,
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            color: Colors.amber[100],
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black26,
                    ),
                    Center(
                      widthFactor: 2,
                      heightFactor: 2,
                      child: Icon(
                        Icons.person_2_outlined,
                        color: Colors.amber[100],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 9),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: const Text(
                        'Photos By',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      'Itachi Ackermann, Paldea',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 190,
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  color: Colors.black26,
                  hoverColor: Colors.lightBlue,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
