import 'package:flutter/material.dart';
import 'package:homework/screen/widget/custom_image.dart';
import 'package:homework/screen/widget/movie_card.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final tabs = ['Episode', 'Similar', 'About'];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF070421),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                BlurredImageWidget(
                  imageUrl: 'https://i.redd.it/dxka5fkvro051.jpg',
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      titleSpacing: 0,
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios,
                                color: Colors.white),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            child: IconButton(
                              icon: const Icon(Icons.bookmark_border,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            child: IconButton(
                              icon:
                                  const Icon(Icons.share, color: Colors.white),
                              onPressed: () {
                                // share action
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 330,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.transparent,
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          "Disney's Aladdin",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text("2019 . Adventure, Comedy . 2h 8m",
                            style: TextStyle(color: Colors.grey)),
                      ],
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow, color: Colors.white),
                  label: const Text(
                    'Play',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE00E33), // red color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 12),
                    elevation: 0,
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.download, color: Colors.white),
                  label: const Text(
                    'Download',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF262340), // dark gray/black
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 55, vertical: 12),
                    elevation: 0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Aladdin, a street boy who falls in love with a princess. With differences in cotite and wealth, Aladdin tries to find a way to become a prince... ",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    TextSpan(
                      text: "Read more",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TabBar(
              dividerColor: Color(0xFF070421),
              controller: _tabController,
              labelColor: const Color(0xFFD81B4D),
              unselectedLabelColor: Colors.grey,
              indicatorColor: const Color(0xFFD81B4D),
              indicatorWeight: 3,
              tabs: tabs.map((tab) => Tab(text: tab)).toList(),
            ),
            SizedBox(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(
                    child: MovieCard(),
                  ),
                  Center(
                    child: MovieCard(),
                  ),
                  Center(
                    child: MovieCard(),
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
