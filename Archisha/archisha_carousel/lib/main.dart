import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = CarouselController();
  int activeIndex = 0;
  final imgList = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Image Carousal Slider"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildImageSlider(),
              const SizedBox(height: 32),
              buildIndicator(),
              const SizedBox(height: 32),
              buildButtons(),
            ],
          ),
        ),
      );

  Widget buildImageSlider() => CarouselSlider.builder(
        carouselController: controller,
        options: CarouselOptions(
          height: 400,
          initialPage: 0,
          // viewportFraction: 1,
          // autoPlay: true,
          // pageSnapping: false,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          // reverse: true,
          // autoPlayInterval: Duration(milliseconds: 500),
          onPageChanged: (index, reason) => setState(() => activeIndex = index),
        ),
        itemCount: imgList.length,
        itemBuilder: (context, index, realIndex) {
          final imgLists = imgList[index];

          return buildImage(imgLists, index);
        },
      );

  Widget buildImage(String imgLists, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.grey,
        child: Image.network(
          imgLists,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imgList.length,
        onDotClicked: animateToSlide,
        effect: const WormEffect(
          dotWidth: 20,
          dotHeight: 20,
          activeDotColor: Colors.blue,
          dotColor: Colors.black12,
        ),
      );

  Widget buildButtons({bool stretch = false}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 24)),
            onPressed: previous,
            child: const Icon(Icons.arrow_back, size: 32),
          ),
          stretch ? const Spacer() : const SizedBox(width: 32),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 24)),
            onPressed: next,
            child: const Icon(Icons.arrow_forward, size: 32),
          ),
        ],
      );

  void animateToSlide(int index) => controller.animateToPage(index);

  void next() =>
      controller.nextPage(duration: const Duration(milliseconds: 500));

  void previous() =>
      controller.previousPage(duration: const Duration(milliseconds: 500));
}
