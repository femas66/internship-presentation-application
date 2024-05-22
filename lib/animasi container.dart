// import 'dart:async';

// import 'package:flutter/material.dart';

// class WaveAnimation extends StatefulWidget {
//   @override
//   _WaveAnimationState createState() => _WaveAnimationState();
// }

// class _WaveAnimationState extends State<WaveAnimation>
//     with SingleTickerProviderStateMixin {
//   AnimationController _controller;
//   Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);

//     _animation = Tween<double>(begin: 100.0, end: 200.0).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );
//   }
// }
