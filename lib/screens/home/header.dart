import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_first_flutter/utils/app_layout.dart';

import '../../utils/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good Morning', style: CustomStyles.headlineStyle3),
                  const Gap(5),
                  Text('Book Tickets', style: CustomStyles.headlineStyle1)
                ],
              ),
              Container(
                height: AppLayout.getHeight(50),
                width: AppLayout.getWidth(50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/leaf.jpg"),
                    )),
              )
            ],
          ),
          const Gap(25),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF4F6FD)),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                const Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                  color: Color(0xFFBFC205),
                ),
                Text(
                  "Search",
                  style: CustomStyles.headlineStyle4,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
