import 'package:flutter/material.dart';
import 'package:speso/constants/size_config.dart';
import 'package:speso/constants/style.dart';
import 'package:speso/constants/widgets/button.dart';

Widget referCard(BuildContext context) {
  return Container(
    height: h(130, context),
    width: w(327, context),
    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [lightPurple, blue, purple],
          //stops: [0.1, 0.5, 0.5, 0.1],
        ),
        borderRadius: BorderRadius.circular(w(10, context))),
    child: Padding(
      padding: EdgeInsets.only(
          right: w(15, context),
          left: w(15, context),
          top: h(10, context),
          bottom: h(10, context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Refer a",
                    style: TextStyle(
                        fontSize: w(15, context),
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                  Text(
                    " Friend",
                    style: TextStyle(
                        fontSize: w(15, context),
                        fontWeight: FontWeight.bold,
                        color: Colors.yellow),
                  ),
                ],
              ),
              Text("Earn Extra cash!",
                  style: TextStyle(
                      fontSize: w(12, context),
                      fontWeight: FontWeight.bold,
                      color: white)),
              button("Get Started", context),
            ],
          ),
          Image.asset("assets/speso tag.png"),
        ],
      ),
    ),
  );
}
