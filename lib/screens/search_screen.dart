import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flyt/utils/app_layout.dart';
import 'package:flyt/utils/styles.dart';
import 'package:flyt/widgets/icon_text_widget.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\n you looking for?",
            style: Styles.headlineStyle1.copyWith(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /**tickets */
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(50))),
                    child: Center(child: Text("Airline tickets")),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(50))),
                    child: Center(child: Text("Hotels")),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xfff4f6fd),
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50))),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18),
                horizontal: AppLayout.getHeight(15)),
            decoration: BoxDecoration(
                color: Color(0xd91130ce),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
            child: Center(
              child: Text(
                "Find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
