import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_first_flutter/utils/app_layout.dart';
import 'package:my_first_flutter/utils/app_styles.dart';

import 'miles_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomStyles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppLayout.getHeight(85),
                  width: AppLayout.getWidth(85),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10)),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/leaf.jpg"))),
                ),
                Gap(AppLayout.getHeight(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Book Tickets", style: CustomStyles.headlineStyle1),
                    Gap(AppLayout.getHeight(2)),
                    Text('New York',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500)),
                    Gap(AppLayout.getHeight(8)),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(3),
                            vertical: AppLayout.getHeight(3)),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(10)),
                            color: const Color(0xFFFEF4F3)),
                        child: (Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF526799)),
                                child: const Icon(
                                    FluentSystemIcons.ic_fluent_shield_filled,
                                    color: Colors.white,
                                    size: 15)),
                            Gap(AppLayout.getHeight(5)),
                            const Text("Premium status",
                                style: TextStyle(
                                    color: Color(0xFF526799),
                                    fontWeight: FontWeight.w600)),
                          ],
                        )))
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Text("Edit",
                            style: CustomStyles.textStyle.copyWith(
                                color: CustomStyles.primaryColor,
                                fontWeight: FontWeight.w100))),
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(color: Colors.grey.shade300),
            Gap(AppLayout.getHeight(8)),
            Stack(
              children: [
                Container(
                  height: AppLayout.getHeight(95),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: CustomStyles.primaryColor,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18))),
                ),
                Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                      padding: EdgeInsets.all(AppLayout.getHeight(30)),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18, color: const Color(0xFF264CD2))),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getHeight(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                            FluentSystemIcons
                                .ic_fluent_lightbulb_filament_filled,
                            color: CustomStyles.primaryColor,
                            size: 27),
                      ),
                      Gap(AppLayout.getHeight(12)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You've got a new award",
                              style: CustomStyles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Text("You have 95 flights in a year",
                              style: CustomStyles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 16))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Center(
                child: Text("Accumulated miles",
                    style: CustomStyles.headlineStyle2)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(5)),
              child: Column(children: [
                Gap(AppLayout.getHeight(20)),
                Text("192802",
                    style: TextStyle(
                      fontSize: 45,
                      color: CustomStyles.textColor,
                      fontWeight: FontWeight.w600,
                    )),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accured",
                        style:
                            CustomStyles.headlineStyle4.copyWith(fontSize: 15)),
                    Text("11 June 2022",
                        style:
                            CustomStyles.headlineStyle4.copyWith(fontSize: 15))
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Column(
                  children: [
                    const MilesCard(
                      topLeftText: "23 042",
                      bottomLeftText: "Miles",
                      topRightText: "Airline CO",
                      bottomRightText: "Recieved from",
                    ),
                    Gap(AppLayout.getHeight(25)),
                    const MilesCard(
                      topLeftText: "24",
                      bottomLeftText: "Miles",
                      topRightText: "McDonal's",
                      bottomRightText: "Recieved from",
                    ),
                    Gap(AppLayout.getHeight(25)),
                    const MilesCard(
                      topLeftText: "52 340",
                      bottomLeftText: "Miles",
                      topRightText: "Exuma",
                      bottomRightText: "Recieved from",
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(25)),
                Text(
                  "How to get more miles",
                  style: CustomStyles.textStyle.copyWith(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            )
          ],
        ));
  }
}
