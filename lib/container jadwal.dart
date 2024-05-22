import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String title;
  final String time;
  final String team;
  final Color color;

  const ScheduleCard({
    Key? key,
    required this.title,
    required this.time,
    required this.team,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 130,
        width: 180,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        decoration: BoxDecoration(
          color: color,
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
            Visibility(
              visible: color == Color(0xffCCEBFF), // Jika warna putih
              child: Text(
                team,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  color: Color(0xFF414141).withOpacity(0.83),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
