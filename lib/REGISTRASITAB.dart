import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegistrasiTab extends StatefulWidget {
  const RegistrasiTab({super.key});

  @override
  State<RegistrasiTab> createState() => _RegistrasiTabState();
}

class _RegistrasiTabState extends State<RegistrasiTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.amber,
            height: 130,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ClipPath(
            clipper: BottomContainerClipper(),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, -3), // Atur offset ke atas
                  ),
                ],
              ),
              height: 130,
              child: Center(
                child: Text(
                  'Bottom Container 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class BottomContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
