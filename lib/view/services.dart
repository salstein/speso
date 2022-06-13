import 'package:flutter/material.dart';
import 'package:speso/constants/style.dart';
import 'package:speso/constants/widgets/referCard.dart';
import 'package:speso/constants/widgets/servicesCircleAvatar.dart';
import '../constants/size_config.dart';
import '../constants/widgets/servicesCard.dart';
import '../constants/widgets/topRow.dart';


// This is the main function for the services page.
// It is used to display the services page.
class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(
        right: w(23, context),
        left: w(23, context),
      ),
      // This is the top row of the services page.
      child: Column(
        children: [
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <
                Widget>[
              topRow(context),
              Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            color: lightGrey,
                            borderRadius: BorderRadius.circular(w(10, context))),
                        height: h(200, context),
                        width: w(300, context)),
                    servicesCard(context) // This is the first card of the services page.
                  ]),
              Padding(
                padding: EdgeInsets.only(top: h(20, context), bottom: h(20, context)),
                child: Row( // This is the second card of the services page.
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    servicesAvatar(
                        context, blue, "Top Up", "assets/svgs/wallet-add.svg"),// This is the first avatar of the second card of the services page.
                    servicesAvatar(
                        context, red, "Withdraw", "assets/svgs/card-send.svg"),
                    servicesAvatar(
                        context, green, "Receive", "assets/svgs/receive.svg"),
                    servicesAvatar(
                        context, purple, "Transactions", "assets/svgs/clock.svg"),
                  ],
                ),
              ),
              Text(
                "Quick Services",
                style:
                    TextStyle(fontSize: w(14, context), fontWeight: FontWeight.bold),
              ),

              // This is the third card of the services page.
              Padding(
                padding: EdgeInsets.only(top: h(10, context), bottom: h(10, context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    boxCard("Airtime", "assets/svgs/airtime.svg", context),
                    boxCard("Pay Bill", "assets/svgs/dollar-circle.svg", context),
                    boxCard("Split Pay", "assets/svgs/convert-card.svg", context),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: h(10, context)),
                child: Text(
                  "Refer and Earn",
                  style: TextStyle(
                      fontSize: w(14, context), fontWeight: FontWeight.bold),
                ),
              ),
              referCard(context)
            ]),
          ),
        ],
      ),
    ));
  }
}
