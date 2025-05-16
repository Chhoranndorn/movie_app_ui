import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                            icon: const Icon(Icons.share, color: Colors.white),
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
          Text("Disney's Aladdin"),
          Text("2019 . Adventure, Comedy . 2h 8m"),
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
                  backgroundColor: const Color(0xFFD81B4D), // red color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  elevation: 0,
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              "Aladdin, a street boy who falls in love with a princess. With differences in cotite and wealth, Aladdin tries to find a way to become a prince... Read more",
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
