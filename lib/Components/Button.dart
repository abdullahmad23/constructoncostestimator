// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  Function() method;
  String text;
  Button({super.key, required this.text, required this.method});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: method,
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontFamily: GoogleFonts.inter().fontFamily,
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width * 0.5,
              MediaQuery.of(context).size.width * 0.13),
          backgroundColor: Color.fromARGB(255, 228, 161, 7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: Colors.white,
            ),
          )),
    );
  }
}
