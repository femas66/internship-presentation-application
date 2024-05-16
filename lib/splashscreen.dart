import 'package:absensipkl/REGISTRASITAB.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:absensipkl/HorizontalScreen.dart';
// Import HalamanRegistrasiTab

class SplaschScreenAbsensiPKL extends StatefulWidget {
  @override
  State<SplaschScreenAbsensiPKL> createState() =>
      _SplaschScreenAbsensiPKLState();
}

class _SplaschScreenAbsensiPKLState extends State<SplaschScreenAbsensiPKL> {
  // @override
  // void initState() {
  //   super.initState();
  //   // Delay selama 3 detik sebelum navigasi ke Halaman Registrasi
  //   Future.delayed(Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => RegistrasiTab()),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // Mengatur preferensi orientasi menjadi landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    // Menampilkan splash screen
    return HorizontalScreen();
  }
}
