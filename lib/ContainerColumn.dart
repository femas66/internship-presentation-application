import 'package:flutter/material.dart';

class ContainerColumn extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onIndexChanged;

  ContainerColumn({required this.selectedIndex, required this.onIndexChanged});

  @override
  _ContainerColumnState createState() => _ContainerColumnState();
}

class _ContainerColumnState extends State<ContainerColumn> {
  // Variabel untuk menyimpan path image dan text sesuai index
  final List<dynamic> icons = [
    Icons.computer_rounded,
    Icons.color_lens,
    Icons.analytics,
    Icons.phone_iphone_rounded
  ];

  final List<String> texts = [
    'Devisi Web',
    'Devisi UI/UX',
    'Devisi Digital Marketing',
    'Devisi Mobile',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        bool isSelected = index == widget.selectedIndex;
        return Expanded(
          child: InkWell(
            onTap: () {
              widget.onIndexChanged(index);
            },
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: 15, bottom: 15),
              height: 63,
              width: 257,
              decoration: BoxDecoration(
                color: isSelected ? Colors.blue : Colors.white,
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
                  if (icons[index] is IconData)
                    Icon(
                      icons[index],
                      color: isSelected ? Colors.white : Color(0xff0099FF),
                      size: 24,
                    )
                  else
                    Image.asset(
                      icons[index],
                      color: isSelected ? Colors.white : Color(0xff0099FF),
                      width: 24,
                      height: 24,
                    ),
                  SizedBox(width: 10),
                  Text(
                    texts[index],
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
          ),
        );
      }),
    );
  }
}
