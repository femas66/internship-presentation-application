import 'package:flutter/material.dart';

class HorizontalScreen extends StatefulWidget {
  const HorizontalScreen({super.key});

  @override
  State<HorizontalScreen> createState() => _HorizontalScreenState();
}

class _HorizontalScreenState extends State<HorizontalScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  // Background Container
                  Positioned.fill(
                    child: Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Color(0xff65B4FF), // Warna biru dengan opacity
                    ),
                  ),
                ],
              ), // Image Container
              Stack(
                children: [
                  Center(
                    child: Container(
                      width: 220,
                      child: Image.asset("assets/images/pklhummatech.png"),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
