import 'package:flutter/material.dart';
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
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    'https://picsum.photos/800/400?img=1',
                    width: 120,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      automaticallyImplyLeading: false, // custom back button
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
                              onPressed: () {
                                // bookmark action
                              },
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
                  top: 300,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    color: Colors.white,
                    child: Center(child: Text('Content below the image')),
                  ),
                ),
              ],
            ),
            Text(
              "Disney's Aladdin",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text("2019 . Adventure, Comedy . 2h 8m",
                style: TextStyle(color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Play button (red background with white play icon and text)
                ElevatedButton.icon(
                  onPressed: () {
                    // Play button action
                  },
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

                // Download button (dark background with white download icon and text)
                ElevatedButton.icon(
                  onPressed: () {
                    // Download button action
                  },
                  icon: const Icon(Icons.download, color: Colors.white),
                  label: const Text(
                    'Download',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF242424), // dark gray/black
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
            Center(
              child: Text(
                  "Aladdin, a street boy who falls in love with a princess. With differences in cotite and wealth, Aladdin tries to find a way to become a prince... Read more",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(
              height: 24,
            ),
            TabBar(
              controller: _tabController,
              labelColor: const Color(0xFFD81B4D),
              unselectedLabelColor: Colors.grey,
              indicatorColor: const Color(0xFFD81B4D),
              indicatorWeight: 3,
              tabs: tabs.map((tab) => Tab(text: tab)).toList(),
            ),
            SizedBox(
              height: 200, // Height for TabBarView content area
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
