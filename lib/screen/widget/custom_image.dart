import 'dart:ui';
import 'package:flutter/material.dart';

class BlurredImageWidget extends StatelessWidget {
  final String imageUrl;

  const BlurredImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.10, sigmaY: 0.10),
            child: Container(
              color:
                  Color(0xFF070421).withOpacity(0.0), // needed for blur to work
            ),
          ),
          // Dark translucent overlay
          Container(
            color: Color(0xFF070421).withOpacity(0.0),
          ),
          // Blue gradient overlay at bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 400, // height of blue overlay area
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF070421), // solid blue at bottom
                    Colors.transparent, // fade to transparent at top
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
