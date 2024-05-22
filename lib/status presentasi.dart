import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String title;
  final String time;
  final String team;
  final String status;

  const StatusCard({
    Key? key,
    required this.title,
    required this.time,
    required this.team,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color statusTextColor;

    if (status == "Belum Presentasi") {
      backgroundColor = Color(0xffFFE9E9);
      statusTextColor = Color(0xffFF1111).withOpacity(0.95);
    } else if (status == "Selesai Presentasi") {
      backgroundColor = const Color(0xffCCEBFF);
      statusTextColor = const Color(0xff00FF38);
    } else {
      backgroundColor = Colors.white;
      statusTextColor = Colors.black;
    }

    return Expanded(
      child: Container(
        height: 169,
        width: 180,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        decoration: BoxDecoration(
          color: backgroundColor,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                color: Colors.black,
              ),
            ),
            SizedBox(height: 13),
            Text(
              time,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                color: Color(0xff464646),
              ),
            ),
            SizedBox(height: 10),
            Text(
              team,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                color: Color(0xFF414141).withOpacity(0.83),
              ),
            ),
            SizedBox(height: 10),
            Text(
              status,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                color: statusTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
