import 'package:flutter/material.dart';

class DowloadedCard extends StatelessWidget {
  const DowloadedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Color(0xFF262340),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 130,
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      child: Image.network(
                        'https://picsum.photos/200/300', // Replace with your image URL or AssetImage
                        width: 110,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Text content on right
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Captain america: The Winter Soldier',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Action, Adventure',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Spacer(),
                                Text(
                                  '2:05:32 | 1.2GB',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Download icon top right
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF262340),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(6),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Color(0xFF262340),
            borderRadius: BorderRadius.circular(20),
          ),
          height: 130,
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15),
                      ),
                      child: Image.network(
                        'https://picsum.photos/200/300', // Replace with your image URL or AssetImage
                        width: 110,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Text content on right
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Captain Marvel',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Action, Adventure',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Spacer(),
                                Text(
                                  '2:05:32 | 1.2GB',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Download icon top right
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF262340),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(6),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
