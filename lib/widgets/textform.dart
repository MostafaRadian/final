import 'package:flutter/material.dart';

class CustomeTextForm extends StatelessWidget {
  var controler;
  var icon;
  String hintText;
  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please Enter Your Data";
    }
    if (value.length >= 8) {
      return "User Name Must be 8 char";
    }
    return null;
  }

  CustomeTextForm(
      {super.key,
      required this.controler,
      required this.hintText,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              icon: icon,
            ),
            controller: controler,
          ),
        ],
      ),
    );
  }
}
