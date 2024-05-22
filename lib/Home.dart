import 'package:absensipkl/Registrasi.dart';
import 'package:absensipkl/custom.dart';
import 'package:absensipkl/list.dart';
import 'package:absensipkl/perigatan.dart';
import 'package:absensipkl/showdialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isVisible = false;
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
    if (_isVisible) {
      // Ensure the TextField gets focused after it becomes visible
      Future.delayed(Duration(milliseconds: 100), () {
        FocusScope.of(context).requestFocus(_focusNode);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(5),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xff0099FF),
            )),
        body: Container(
          width: width1,
          height: height1,
          color: Color.fromRGBO(187, 228, 255, 0.26),
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        height: 76,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff0099FF),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 4,
                              color: Color(0x499c9c9c),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Tim Mobile",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Kategori: ",
                                          style: TextStyle(
                                              fontFamily: 'Roboto',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white),
                                        ),
                                        AnimatedText(),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Status :",
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0099FF)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Presentasi",
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff0099FF)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 4,
                                color: Color(0x499c9c9c),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "Anggota",
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Expanded(
                                child: ListView(
                                  children: [
                                    CustomContainer(
                                      title: 'Ketua',
                                      status: 'Ketua',
                                      isKetua:
                                          true, // Parameter isKetua diatur true untuk ketua
                                    ),
                                    CustomContainer(
                                      title: 'Anggota',
                                      status: 'Anggota',
                                    ),
                                    CustomContainer(
                                      title: 'Anggota',
                                      status: 'Anggota',
                                    ),
                                    CustomContainer(
                                      title: 'Anggota',
                                      status: 'Anggota',
                                    ),
                                    CustomContainer(
                                      title: 'Anggota',
                                      status: 'Anggota',
                                    ),
                                    CustomContainer(
                                      title: 'Anggota',
                                      status: 'Anggota',
                                    ),
                                    CustomContainer(
                                      title: 'Anggota',
                                      status: 'Anggota',
                                    ),
                                    CustomContainer(
                                      title: 'Anggota',
                                      status: 'Anggota',
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: 472,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 4,
                                color: Color(0x499c9c9c),
                              )
                            ],
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 60,
                                width: 200,
                                child: Image.asset(
                                  "assets/images/pklhummatech.png",
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                                child: Image.asset("assets/images/tab2.png")),
                            SizedBox(
                              height: 20,
                            ),
                            Visibility(
                              visible: !_isVisible,
                              child: GestureDetector(
                                onTap: _toggleVisibility,
                                child: Container(
                                  height: 60,
                                  // Adjust width as needed
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 4,
                                        color: Colors.transparent,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _isVisible,
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     offset: Offset(0, 0),
                                  //     blurRadius: 4,
                                  //     color: Color(0x499c9c9c),
                                  //   ),
                                  // ],
                                ),
                                child: TextField(
                                  focusNode: _focusNode,
                                  controller: _textEditingController,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto',
                                  ),
                                  onSubmitted: (value) {
                                    CustomSnackbar.show(
                                        context, "Anda Sudah Presentasi");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RegistrasiTab(),
                                      ),
                                    );
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF838181),
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF838181),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF838181),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                CustomSnackbar.show(
                                    context, "Anda Selesai Presentasi");
                              },
                              child: Container(
                                height: 70,
                                child: Center(
                                  child: Text(
                                    "Tab Untuk Mengakhiri Presentasi",
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class AnimatedText extends StatefulWidget {
  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  int _currentIndex = 0; // Menyimpan indeks teks saat ini

  // Daftar warna untuk setiap indeks
  List<Color> _textColors = [
    Colors.white,
    Color(0xFFFF7A00),
    Color(0xFF00FF00),
    Color(0xFFFF0000)
  ];

  // Daftar teks untuk setiap indeks
  List<String> _texts = ["ook", "Solo Project", "Mini Project", "Big Project"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              // Mengubah ke indeks berikutnya
              _currentIndex = (_currentIndex + 1) % _texts.length;
            });
          },
          child: AnimatedDefaultTextStyle(
            duration: Duration(seconds: 1),
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: _textColors[
                  _currentIndex], // Menggunakan warna dari daftar warna
            ),
            child: Text(
                _texts[_currentIndex]), // Menggunakan teks dari daftar teks
          ),
        ),
      ],
    );
  }
}
