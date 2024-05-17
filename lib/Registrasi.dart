import 'package:absensipkl/Home.dart';
import 'package:absensipkl/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class RegistrasiTab extends StatefulWidget {
  const RegistrasiTab({super.key});

  @override
  State<RegistrasiTab> createState() => _RegistrasiTabState();
}

class _RegistrasiTabState extends State<RegistrasiTab> {
  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: width1,
      height: height1,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Expanded(
              child: Image.asset(
                "assets/images/Wave.png",
                // fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: width1,
            height: height1,
            color: Color.fromRGBO(187, 228, 255, 0.26),
            padding: EdgeInsets.only(right: 30, left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 537,
                        width: 640,
                        child: Image.asset("assets/images/Sad.png")),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
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
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 4,
                                    color: Color.fromARGB(255, 204, 204, 204))
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/list.png",
                                  width: 20,
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
                                      color: Color(0xff0099FF)),
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
                          height: 477,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 4,
                                    color: Color.fromARGB(255, 204, 204, 204))
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 60,
                                  width: 250,
                                  child: Image.asset(
                                    "assets/images/pklhummatech.png",
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: 320,
                                  child: Image.asset("assets/images/Ikan.png")),
                              SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                },
                                child: Container(
                                  height: 70,
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
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
