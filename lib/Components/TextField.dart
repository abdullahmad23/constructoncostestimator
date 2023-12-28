// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class InputFields extends StatelessWidget {
  TextEditingController controller;
  String fieldText;
  String? Function(String?)? validation;

  InputFields({
    super.key,
    required this.controller,
    required this.fieldText,
    required this.validation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01,
          horizontal: MediaQuery.of(context).size.height * 0.01),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          label: Text(fieldText),
          fillColor: Color(0xff192730),
          filled: true,
          labelStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              strokeAlign: 0,
              width: 0,
              color: const Color.fromARGB(255, 235, 234, 234),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Color(0xffe3a413),
            ),
          ),
        ),
        validator: validation,
      ),
    );
  }
}
