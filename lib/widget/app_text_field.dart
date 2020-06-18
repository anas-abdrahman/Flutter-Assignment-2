import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final Widget icon;
  final TextEditingController controller;
  final bool isBorder;

  const AppTextField({this.hintText, this.icon, this.controller, this.isBorder = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey[500],
          fontSize: 14,
        ),
        hintText: this.hintText,
        prefixIcon: this.icon,
        contentPadding: EdgeInsets.all(14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
          borderSide: BorderSide(
            width: this.isBorder ? 1 : 0,
            style: this.isBorder ? BorderStyle.solid : BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
