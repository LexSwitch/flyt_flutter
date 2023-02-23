import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flyt/utils/app_layout.dart';
import 'package:flyt/utils/styles.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * .6,
      height: 350,
      margin: EdgeInsets.only(right: 17, top: 5),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 17,
      ),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(
            24,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/${hotel['image']}"),
              ),
            ),
          ),
          Gap(10),
          Text(
            "Open space",
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(5),
          Text(
            hotel['place'],
            style: Styles.headlineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headlineStyle1.copyWith(
              color: Styles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
