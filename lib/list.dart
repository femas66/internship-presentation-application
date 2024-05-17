import 'package:absensipkl/Registrasi.dart';
import 'package:absensipkl/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Liste extends StatefulWidget {
  const Liste({super.key});

  @override
  State<Liste> createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  int _selectedIndex = -1;
  bool _isScheduleConfirmed = false;

  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controllerv = TextEditingController();

  void _onContainerTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<bool> _isSelected = List.generate(3, (index) => false);

  void _showCustomDialog(int index) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x499c9c9c),
                    offset: Offset(0, 0),
                    blurRadius: 3,
                  ),
                ],
              ),
              padding:
                  EdgeInsets.only(top: 16, bottom: 16, left: 20, right: 20),
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Jadwal-1",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Text("Judul Presentasi",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                              color: Color(0xff5B5B5B))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x499c9c9c),
                          offset: Offset(0, 0),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Jadwal ke-1',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            color: Color(0xffB8B8B8)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Deskripsi",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto',
                              color: Color(0xff5B5B5B))),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x499c9c9c),
                          offset: Offset(0, 0),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _controllerv,
                      decoration: InputDecoration(
                        hintText: 'Opsional',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            color: Color(0xffB8B8B8)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color(0xff0099FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 57,
                            child: Center(
                              child: Text(
                                "Batal",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto',
                                    color: Colors.white),
                              ),
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isSelected[index] = true;
                            _isScheduleConfirmed = true;
                          });
                          Navigator.of(context).pop();
                        },
                        child: Container(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              color: Color(0xff0099FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            height: 57,
                            child: Center(
                              child: Text(
                                "Konfirmasi",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto',
                                    color: Colors.white),
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: width1,
          height: height1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: double.infinity,
                width: 347,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      blurRadius: 2, color: Color.fromARGB(255, 204, 204, 204))
                ]),
                padding: EdgeInsets.only(top: 70, left: 40, right: 40),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrasiTab()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            size: 35,
                            color: Color(0xff0099FF),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Kembali",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto',
                                  color: Color(0xff0099FF)))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SelectableContainer(
                      index: 0,
                      icon: Icons.laptop_windows_sharp,
                      text: "Divisi Web",
                      selectedIndex: _selectedIndex,
                      onTap: _onContainerTap,
                    ),
                    SizedBox(height: 40),
                    SelectableContainer(
                      index: 1,
                      icon: Icons.color_lens,
                      text: "Divisi UI/UX",
                      selectedIndex: _selectedIndex,
                      onTap: _onContainerTap,
                    ),
                    SizedBox(height: 40),
                    SelectableContainer(
                      index: 2,
                      icon: Icons.analytics,
                      text: "Divisi Digital Marketing",
                      selectedIndex: _selectedIndex,
                      onTap: _onContainerTap,
                    ),
                    SizedBox(height: 40),
                    SelectableContainer(
                      index: 3,
                      icon: Icons.phone_android,
                      text: "Divisi Mobile",
                      selectedIndex: _selectedIndex,
                      onTap: _onContainerTap,
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 21, right: 32, left: 32),
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
                  height: 313,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                          color: Color.fromARGB(255, 204, 204, 204),
                        ),
                      ]),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Jadwal Presentasi",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: List.generate(3, (index) {
                            return GestureDetector(
                              onTap: () {
                                _showCustomDialog(index);
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: 16, left: 7, right: 7),
                                width: 195,
                                height: 134,
                                decoration: BoxDecoration(
                                  color: _isSelected[index]
                                      ? Color(0xffCCEBFF)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 2,
                                      color: Color.fromARGB(255, 204, 204, 204),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Jadwal ke-${index + 1}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 13),
                                    Text(
                                      "14:00-14:25",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto',
                                        color: Color(0xff464646),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Tim web laravel",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Roboto',
                                        color: _isSelected[index]
                                            ? Color(0xFF414141)
                                                .withOpacity(0.83)
                                            : Colors.transparent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: _isScheduleConfirmed
                                  ? () {
                                      // Navigate to the next page
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RegistrasiTab()));
                                    }
                                  : null,
                              child: Container(
                                height: 45,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: _isScheduleConfirmed
                                      ? Color(0xff0099FF)
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x499c9c9c),
                                      offset: Offset(0, 0),
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "Ambil Jadwal",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
