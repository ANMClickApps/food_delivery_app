import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  @required
  final TextEditingController nameController;
  @required
  final String lable;
  @required
  final bool isPassword;
  @required
  final TextInputType keyboardType;

  CustomTextField({
    this.lable,
    this.nameController,
    this.isPassword: false,
    this.keyboardType: TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: lable),
      obscureText: isPassword ? true : false,
      controller: nameController,
      keyboardType: keyboardType,
      style: TextStyle(fontSize: 17.0),
    );
  }
}
