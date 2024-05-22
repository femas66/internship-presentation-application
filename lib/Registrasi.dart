import 'package:absensipkl/Home.dart';
import 'package:absensipkl/list.dart';
import 'package:absensipkl/perigatan.dart';
import 'package:absensipkl/showdialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/widgets.dart';

class RegistrasiTab extends StatefulWidget {
  const RegistrasiTab({super.key});

  @override
  State<RegistrasiTab> createState() => _RegistrasiTabState();
}

class _RegistrasiTabState extends State<RegistrasiTab>
    with SingleTickerProviderStateMixin {
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
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Expanded(
              child: Image.asset("assets/images/Wave.png"),
            ),
          ),
          Container(
            width: width1,
            height: height1,
            color: Color.fromRGBO(187, 228, 255, 0.26),
            padding: EdgeInsets.only(right: 48, left: 48, top: 30, bottom: 30),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      width: 640,
                      child: Image.asset("assets/images/Sad.png"),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Liste()),
                            );
                          },
                          child: Container(
                            height: 41,
                            width: 472,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/list.png",
                                  width: 23,
                                  height: 23,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Jadwal",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 472,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
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
                                  width: 250,
                                  child: Image.asset(
                                    "assets/images/pklhummatech.png",
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 280,
                                  child: Image.asset("assets/images/Ikan.png"),
                                ),
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
                                        Warning.show(
                                            context, "Anda Mulai Presentasi");
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Home(),
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
                                SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // CustomSnackbar.show(
                                    //     context, "Anda Selesai Presentasi");
                                  },
                                  child: Center(
                                    child: Text(
                                      "Tab Untuk Mulai Presentasi",
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
