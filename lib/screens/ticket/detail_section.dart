import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_styles.dart';

class DetailSection extends StatelessWidget {
  final String topLeftText;
  final String bottomLeftText;
  final String topRightText;
  final String bottomRightText;
  final Widget? centerWidget;
  const DetailSection(
      {Key? key,
      this.centerWidget = const SizedBox.shrink(),
      required this.topRightText,
      required this.bottomLeftText,
      required this.topLeftText,
      required this.bottomRightText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(topLeftText,
                  style: CustomStyles.headlineStyle3
                      .copyWith(color: Colors.black)),
              const Gap(5),
              Text(bottomLeftText,
                  style:
                      CustomStyles.headlineStyle4.copyWith(color: Colors.grey)),
            ],
          ),
          Column(
            children: [centerWidget!],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(topRightText,
                  style: CustomStyles.headlineStyle3
                      .copyWith(color: Colors.black)),
              const Gap(5),
              Text(bottomRightText,
                  textAlign: TextAlign.end,
                  style:
                      CustomStyles.headlineStyle4.copyWith(color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}
