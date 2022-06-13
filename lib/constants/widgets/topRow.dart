import 'package:flutter/material.dart';
import 'package:speso/constants/size_config.dart';
import 'package:flutter_svg/svg.dart';


Widget topRow(BuildContext context) {
  return SafeArea(
    child: Row(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: h(30, context), bottom: h(30, context)),
        child: SizedBox(
          width: w(327, context),
          child: Row(
            children: [
              Text(
                "Services",
                style: TextStyle(
                    fontSize: w(18, context), fontWeight: FontWeight.bold),
              ),
              const Spacer(
                flex: 2,
              ),
              SvgPicture.asset(
                "assets/svgs/setting-2.svg",
                height: h(30, context),
                width: w(30, context),
              ),
            ],
          ),
        ),
      ),
    ]),
  );
}
