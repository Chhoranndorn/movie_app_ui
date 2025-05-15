import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> items = const [
    Image(
      image: NetworkImage('https://picsum.photos/800/400?img=1'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: NetworkImage('https://picsum.photos/800/400?img=2'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image(
      image: NetworkImage('https://picsum.photos/800/400?img=3'),
      fit: BoxFit.cover,
      width: double.infinity,
    ),
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: items,
            options: CarouselOptions(
              height: 400,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: items.asMap().entries.map((entry) {
              int idx = entry.key;
              return GestureDetector(
                onTap: () => setState(() {
                  _current = idx;
                }),
                child: Container(
                  width: 10.0,
                  height: 10.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == idx
                        ? Colors.redAccent // active dot color
                        : Colors.grey[300], // inactive dot color
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
