import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final String status;
  final bool isKetua;

  CustomContainer({
    required this.title,
    required this.status,
    this.isKetua = false,
  });

  @override
  Widget build(BuildContext context) {
    Color containerColor = isKetua ? Color(0xffDBF1FF) : Colors.white;
    Color TextColor = isKetua ? Color(0xff0099FF) : Colors.black;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 21),
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: containerColor,
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
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Text(
            status,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: TextColor,
            ),
          ),
        ],
      ),
    );
  }
}
