import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSnackbar {
  static void show(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: _CustomSnackBarContent(message: message),
        duration: Duration(seconds: 4),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}

class _CustomSnackBarContent extends StatefulWidget {
  final String message;

  const _CustomSnackBarContent({Key? key, required this.message})
      : super(key: key);

  @override
  _CustomSnackBarContentState createState() => _CustomSnackBarContentState();
}

class _CustomSnackBarContentState extends State<_CustomSnackBarContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    // Menunggu selama 4 detik sebelum memulai animasi
    Future.delayed(Duration(seconds: 0), () {
      if (mounted) {
        _animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _closeSnackbar() {
    _animationController.reverse().then((_) {
      if (mounted) {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0),
            end: Offset(0.0, 0.0),
          ).animate(_animationController),
          child: GestureDetector(
            onHorizontalDragEnd: (_) {
              // Saat ditutup dengan gesture geser ke kanan
              _closeSnackbar();
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 4,
                    color: Color(0x499c9c9c),
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/images/done.png")),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    widget.message,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: _closeSnackbar,
                  //   child: Icon(
                  //     Icons.close_outlined,
                  //     color: Color(0xff464646),
                  //     size: 25,
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
