import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(
        0, size.height - 30); // Mulai dari kiri bawah pada ketinggian 30
    path.lineTo(
        size.width, size.height - 100); // Garis ke kanan atas dengan tinggi 300
    path.lineTo(size.width, 0); // Garis ke kanan atas sudut
    path.lineTo(0, 0); // Garis kembali ke titik awal (kiri atas)
    path.close(); // Menutup path
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
