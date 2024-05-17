import 'package:flutter/material.dart';

class SelectableContainer extends StatelessWidget {
  final int index;
  final IconData icon;
  final String text;
  final int selectedIndex;
  final Function(int) onTap;

  const SelectableContainer({
    Key? key,
    required this.index,
    required this.icon,
    required this.text,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectedIndex == index;

    return InkWell(
      onTap: () => onTap(index),
      child: Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        height: 63,
        width: 238,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Color.fromARGB(255, 204, 204, 204),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: isSelected ? Colors.white : Color(0xff0099FF)),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                color: isSelected ? Colors.white : Color(0xff0099FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
