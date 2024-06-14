import 'package:absensipkl/presentation/pages/landing/landing_screen.dart';
import 'package:flutter/material.dart';

class Liste extends StatefulWidget {
  const Liste({super.key});

  @override
  State<Liste> createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  Color RedText = const Color(0xffFF1111).withOpacity(0.95);
  Color GreenText = const Color(0xff00FF38);
  Color StatusCardD = const Color(0xffE9FFEB);
  Color StatusCardB = const Color(0xffFFE9E9);
  final List<List<String>> jadwalPresentasi = [
    ["Jadwal ke-1", "14:40 - 15:30", "Tim Web"],
    ["Jadwal ke-2", "12:50 - 13:30", "Tim UI/UX"],
    ["Jadwal ke-3", "09:40 - 10:20", "Tim Digital Marketing"],
    ["Jadwal ke-4", "08:00 - 08:30", "Tim Mobile"],
  ];

  final List<List<String>> statusPresentasi = [
    ["Belum Presentasi", "Selesai Presentasi"],
    ["Belum Presentasi", "Selesai Presentasi"],
    ["Belum Presentasi", "Selesai Presentasi"],
    ["Belum Presentasi", "Selesai Presentasi"],
  ];

  int selectedIndex = 0;

  // Variabel untuk menyimpan path image dan text sesuai index
  final List<dynamic> icons = [
    Icons.computer_rounded,
    Icons.color_lens,
    Icons.analytics,
    Icons.phone_iphone_rounded
  ];

  final List<String> Divisi = [
    'Divisi Web',
    'Divisi UI/UX',
    'Divisi Digital Marketing',
    'Divisi Mobile',
  ];
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
        ),
      ),
      body: Container(
        width: width1,
        height: height1,
        color: Color.fromRGBO(187, 228, 255, 0.26),
        child: Row(
          children: [
            Container(
              height: height1,
              width: 347,
              decoration: BoxDecoration(
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 70, left: 40, right: 40),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => RegistrasiTab()),
                              // );
                            },
                            child: Expanded(
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
                                  Text(
                                    "Kembali",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Roboto',
                                      color: Color(0xff0099FF),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(4, (index) {
                                bool isSelected = index == selectedIndex;
                                return Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 20, right: 20),
                                      margin:
                                          EdgeInsets.only(top: 15, bottom: 15),
                                      height: 63,
                                      width: 257,
                                      decoration: BoxDecoration(
                                        color: isSelected
                                            ? Colors.blue
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x499c9c9c),
                                            offset: Offset(0, 0),
                                            blurRadius: 3,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          // Menentukan ikon sesuai dengan indeks
                                          Icon(
                                            icons[index],
                                            color: isSelected
                                                ? Colors.white
                                                : Color(0xff0099FF),
                                            size: 24,
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            Divisi[index],
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Roboto',
                                              color: isSelected
                                                  ? Colors.white
                                                  : Color(0xff0099FF),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset("assets/images/bottom.png")
                ],
              ),
            ),
            // Buat sebuah variabel untuk menyimpan indeks yang dipilih

// Kemudian gunakan indeks tersebut untuk menampilkan halaman yang sesuai
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                height: double.infinity,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: Divisi.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Visibility(
                        visible: index == selectedIndex,
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 4,
                                  color: Color(0x499c9c9c),
                                )
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Jadwal Presentasi ${Divisi[index]}",
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
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 134,
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(20),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 4,
                                              color: Color(0x499c9c9c),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              jadwalPresentasi[index][
                                                  0], // Judul jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index][
                                                  1], // Waktu jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Color(0xff464646),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Visibility(
                                              visible: false,
                                              child: Text(
                                                jadwalPresentasi[index][
                                                    2], // Tim jadwal presentasi
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF414141)
                                                      .withOpacity(0.83),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 134,
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(20),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffD6EFFF),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 4,
                                              color: Color(0x499c9c9c),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              jadwalPresentasi[index][
                                                  0], // Judul jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index][
                                                  1], // Waktu jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Color(0xff464646),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index]
                                                  [2], // Tim jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Color(0xFF414141)
                                                    .withOpacity(0.83),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 134,
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(20),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 4,
                                              color: Color(0x499c9c9c),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              jadwalPresentasi[index][
                                                  0], // Judul jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index][
                                                  1], // Waktu jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Color(0xff464646),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Visibility(
                                              visible: false,
                                              child: Text(
                                                jadwalPresentasi[index][
                                                    2], // Tim jadwal presentasi
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF414141)
                                                      .withOpacity(0.83),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 134,
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.all(20),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffD6EFFF),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 4,
                                              color: Color(0x499c9c9c),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              jadwalPresentasi[index][
                                                  0], // Judul jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index][
                                                  1], // Waktu jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Color(0xff464646),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index]
                                                  [2], // Tim jadwal presentasi
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF414141)
                                                    .withOpacity(0.83),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 4,
                                  color: Color(0x499c9c9c),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Status Presentasi ${Divisi[index]}",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: StatusCardD,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 4,
                                              color: Color(0x499c9c9c),
                                            ),
                                          ],
                                        ),
                                        child: Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                jadwalPresentasi[index][
                                                    0], // Judul status presentasi
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Roboto',
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                jadwalPresentasi[index][
                                                    1], // Waktu status presentasi
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Roboto',
                                                  color: Color(0xff464646),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                jadwalPresentasi[index][
                                                    2], // Tim status presentasi
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF414141)
                                                      .withOpacity(0.83),
                                                ),
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                statusPresentasi[index][
                                                    1], // Status status presentasi
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                  color: GreenText,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: StatusCardB,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 4,
                                              color: Color(0x499c9c9c),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              jadwalPresentasi[index][
                                                  0], // Judul status presentasi
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index][
                                                  1], // Waktu status presentasi
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Color(0xff464646),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index]
                                                  [2], // Tim status presentasi
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF414141)
                                                    .withOpacity(0.83),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              statusPresentasi[index][
                                                  0], // Status status presentasi
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                color: RedText,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: StatusCardB,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 4,
                                              color: Color(0x499c9c9c),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              jadwalPresentasi[index][
                                                  0], // Judul status presentasi
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index][
                                                  1], // Waktu status presentasi
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Color(0xff464646),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index]
                                                  [2], // Tim status presentasi
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF414141)
                                                    .withOpacity(0.83),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              statusPresentasi[index][
                                                  0], // Status status presentasi
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                color: RedText,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: StatusCardD,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 0),
                                              blurRadius: 4,
                                              color: Color(0x499c9c9c),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              jadwalPresentasi[index][
                                                  0], // Judul status presentasi
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index][
                                                  1], // Waktu status presentasi
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                                color: Color(0xff464646),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              jadwalPresentasi[index]
                                                  [2], // Tim status presentasi
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF414141)
                                                    .withOpacity(0.83),
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              statusPresentasi[index][
                                                  1], // Status status presentasi
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontFamily: 'Roboto',
                                                  fontWeight: FontWeight.w600,
                                                  color: GreenText),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]));
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      //  Column(children: [],)
    );
  }
}
