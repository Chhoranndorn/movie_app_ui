import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF262340),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 130,
      child: Stack(
        children: [
          Row(
            children: [
              // Image poster on left
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trailer',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Expanded(
                        child: Text(
                          'Aladdin, a street boy who falls in love with a princess. With differences in caste and wealth, Aladdin tries to find...',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
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
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(6),
              child: const Icon(
                Icons.download_rounded,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
