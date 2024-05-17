import 'package:absensipkl/custom.dart';
import 'package:absensipkl/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      width: width1,
      height: height1,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
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
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 4,
                          color: Color.fromARGB(255, 204, 204, 204))
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
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                "Kategori: Mini Project",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff6B6969)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Status :",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6C6C6C)),
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
                                color: Color(0xffAEFFC0)),
                          )
                        ],
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                          child: ListView.builder(
                            itemCount: 4,
                            // You can set the number of items here
                            itemBuilder: (context, index) {
                              return CustomContainer(
                                title:
                                    'Tim Mobile', // Ketua diganti dengan Anggota
                                status: 'Anggota',
                              );
                            },
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
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
                          width: 200,
                          child: Image.asset(
                            "assets/images/pklhummatech.png",
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(child: Image.asset("assets/images/tab2.png")),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
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
    ));
  }
}
