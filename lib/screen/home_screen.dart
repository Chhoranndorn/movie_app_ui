import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/screen/detail_screen.dart';

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
  final List<String> categories = [
    "All",
    "Action",
    "Comedy",
    "Romance",
    "Drama",
    "Horror",
    "Thriller",
    "Adventure",
  ];
  String selectedCategory = 'All';

  final List<String> moviePosters = const [
    'https://picsum.photos/800/400?img=1', // Aladdin
    'https://picsum.photos/800/400?img=1', // Joker
    'https://picsum.photos/800/400?img=1', // Spiderman
    'https://picsum.photos/800/400?img=1', // Spiderman
    'https://picsum.photos/800/400?img=1', // Spiderman
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF070421),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 400,
              child: Stack(children: [
                CarouselSlider(
                  items: items,
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1.0,
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
                Positioned(
                  bottom: 16,
                  left: 0,
                  right: 0,
                  child: Row(
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
                                ? Color(0xFFE00E33)
                                : Colors.grey[300],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categories.map((category) {
                        final bool isSelected = selectedCategory == category;
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = category;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 7),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 5),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Color(0xFFE00E33)
                                  : Color(0xFF1E1C2A),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              category,
                              style: TextStyle(
                                color: isSelected
                                    ? Colors.white
                                    : Colors.grey[300],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Most Popular",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        " Sell all",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200, // Adjust based on image size
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: moviePosters.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () => Get.to(() => DetailScreen()),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              moviePosters[index],
                              width: 120,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Lastest Movies",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Spacer(),
                      Text(
                        " Sell all",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200, // Adjust based on image size
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: moviePosters.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 12),
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            moviePosters[index],
                            width: 120,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
