import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_styles.dart';

class UpcomingFlightsSection extends StatelessWidget {
  const UpcomingFlightsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Upcoming Flights", style: CustomStyles.headlineStyle2),
            InkWell(
              onTap: () {},
              child: Text("View All",
                  style: CustomStyles.textStyle
                      .copyWith(color: CustomStyles.primaryColor)),
            )
          ],
        ),
        const Gap(15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              SizedBox(
                height: AppLayout.getHeight(300),
                width: size.width * 0.43,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 20,
                          spreadRadius: 5)
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: AppLayout.getHeight(160),
                          width: AppLayout.getWidth(180),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/alexander-kaunas-67-sOi7mVIk-unsplash.jpg'),
                              )),
                        ),
                        const Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                '20% discount on business class tickets for international Airlines',
                                style: CustomStyles.textStyle.copyWith(
                                    fontSize: 15, color: Colors.grey)),
                            const Gap(3),
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(142),
                  width: size.width * 0.43,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color(0xFF526799),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor Survey",
                            style: CustomStyles.headlineStyle2
                                .copyWith(color: Colors.white)),
                        Text("Take the survey and get whole lot of discount",
                            style: CustomStyles.textStyle
                                .copyWith(color: Colors.white, fontSize: 15)),
                      ]),
                ),
                Container(
                  height: AppLayout.getHeight(142),
                  width: size.width * 0.43,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color(0xFF526799),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor Refferral",
                            style: CustomStyles.headlineStyle2
                                .copyWith(color: Colors.white)),
                        Text("Take the survey and get whole lot of discount",
                            style: CustomStyles.textStyle
                                .copyWith(color: Colors.white, fontSize: 15)),
                      ]),
                ),
              ],
            ),
          )
        ])
      ],
    );
  }
}
