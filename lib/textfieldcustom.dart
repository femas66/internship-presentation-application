import 'package:flutter/material.dart';

class LoginInput extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData? leftIcon;
  final bool isObsecure;
  final VoidCallback? onLeftIconPressed;
  final String? Function(String?)? validator;

  const LoginInput({
    Key? key,
    required this.hintText,
    this.isObsecure = false,
    this.leftIcon,
    required this.textController,
    this.onLeftIconPressed,
    this.validator,
  }) : super(key: key);

  @override
  State<LoginInput> createState() => LoginInputState();
}

class LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: TextStyle(fontSize: 12),
        obscureText: widget.isObsecure,
        controller: widget.textController,
        validator: widget.validator,
        decoration: InputDecoration(
            counterText: '',
            hintText: widget.hintText,
            contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
            hintStyle: TextStyle(fontSize: 12),
            border: OutlineInputBorder()));
  }
}
