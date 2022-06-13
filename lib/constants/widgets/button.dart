
import 'package:flutter/material.dart';
import 'package:speso/constants/style.dart';
import '../size_config.dart';

Widget button(String title , BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(),
    child: MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      onPressed: () {
        
      },
      child: Text(
        title,
        style: TextStyle(
          color: black,
          fontSize: w(14,context),
          fontWeight: FontWeight.w600,
        ),
      ),
      color: white,
      height: h(30,context),
      minWidth: w(40,context)
    ),
  );
}
