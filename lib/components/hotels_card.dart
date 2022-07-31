import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HotelsCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelsCard({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: SizedBox(
        height: 300,
        width: 220,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFF526799),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
            ],
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 160,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(hotel['image']),
                  )),
            ),
            const Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(hotel['place'],
                    style: CustomStyles.textStyle
                        .copyWith(fontSize: 22, color: Colors.grey)),
                const Gap(3),
                Text(hotel['destination'],
                    style: CustomStyles.headlineStyle3
                        .copyWith(color: Colors.white)),
                const Gap(10),
                Text(hotel['price'],
                    style: CustomStyles.headlineStyle2.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
