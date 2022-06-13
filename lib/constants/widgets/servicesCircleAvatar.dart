import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../size_config.dart';

Widget servicesAvatar(
    BuildContext context, Color color, String text, String asset) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: color,
        radius: w(20.0, context),
        child: SvgPicture.asset(
          asset,
          height: h(30, context),
          width: w(30, context),
        ),
      ),
      Text(
        text,
        style: TextStyle(fontSize: w(12, context), fontWeight: FontWeight.bold),
      ),
    ],
  );
}
