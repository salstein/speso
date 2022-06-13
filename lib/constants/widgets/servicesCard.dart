import 'package:flutter/material.dart';
import 'package:speso/constants/size_config.dart';
import 'package:flutter_svg/svg.dart';

import '../style.dart';

Widget servicesCard(BuildContext ctx) {
  return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/Wallet banner.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(w(10, ctx))),
      height: h(190, ctx),
      width: w(327, ctx),
      child: Padding(
        padding: EdgeInsets.only(
            // right: w(15, ctx),
            left: w(30, ctx),
            top: h(40, ctx),
            bottom: h(40, ctx)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wallet\nBalance",
                style: TextStyle(
                    fontSize: w(15, ctx),
                    fontWeight: FontWeight.bold,
                    color: white),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/naira.svg",
                    height: h(20, ctx),
                    width: w(20, ctx),
                    color: white,
                  ),
                  Text("40,000.00",
                      style: TextStyle(
                          color: white,
                          fontSize: w(20, ctx),
                          fontWeight: FontWeight.w700)),
                ],
              )
            ]),
      ));
}

Widget boxCard(String text, String asset, BuildContext ctx) {
  return InkWell(
    onTap: () {},
    child: Card(
        child: Container(
      height: h(100, ctx),
      width: w(100, ctx),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(w(10, ctx)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SvgPicture.asset(
            asset,
            height: h(30, ctx),
            width: w(30, ctx),
          ),
          Text(text),
        ],
      ),
    )),
  );
}
