import 'package:absensipkl/list.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String title;

  final String status;

  CustomContainer({
    required this.title,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 7, bottom: 7, right: 10, left: 10),
      padding: EdgeInsets.symmetric(horizontal: 21),
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 4,
            color: Color.fromARGB(255, 204, 204, 204),
          ),
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
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff6C6C6C),
            ),
          ),
        ],
      ),
    );
  }
}
