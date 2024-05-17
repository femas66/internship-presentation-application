import 'dart:async';

import 'package:absensipkl/Registrasi.dart';
import 'package:flutter/material.dart';

class HorizontalScreen extends StatefulWidget {
  const HorizontalScreen({Key? key}) : super(key: key);

  @override
  State<HorizontalScreen> createState() => _HorizontalScreenState();
}

class _HorizontalScreenState extends State<HorizontalScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    // Menjalankan fungsi untuk menavigasi ke halaman lain setelah 5 detik
    navigateToNextPageAfterDelay();
  }

  Future<void> navigateToNextPageAfterDelay() async {
    // Menunda navigasi selama 5 detik
    await Future.delayed(Duration(seconds: 2));
    // Melakukan navigasi ke halaman lain menggunakan Navigator
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => RegistrasiTab()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Colors.white, // Ubah warna latar belakang ke putih
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight,
              color: Colors.white,
            ),
            Center(
              child: Container(
                width: 350,
                child: Image.asset("assets/images/pklhummatech.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
