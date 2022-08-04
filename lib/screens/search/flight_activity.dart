import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_styles.dart';

class FlightActivity extends StatelessWidget {
  final IconData activityIcon;
  final String activityText;
  const FlightActivity(
      {Key? key, required this.activityIcon, required this.activityText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(12),
            horizontal: AppLayout.getWidth(12)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
        child: Row(
          children: [
            Icon(
              activityIcon,
              color: const Color(0xFFBFC2DF),
            ),
            Gap(AppLayout.getWidth(10)),
            Text(activityText, style: CustomStyles.textStyle)
          ],
        ));
  }
}
