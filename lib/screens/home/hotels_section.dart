import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_first_flutter/components/hotels_card.dart';
import 'package:my_first_flutter/utils/hotel_lists.dart';
import '../../utils/app_styles.dart';

class Hotels extends StatelessWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hotels", style: CustomStyles.headlineStyle2),
              InkWell(
                onTap: () {
                  print("Clicked View all");
                },
                child: Text("View All",
                    style: CustomStyles.textStyle
                        .copyWith(color: CustomStyles.primaryColor)),
              )
            ],
          ),
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
              children:
                  hotelList.map((hotel) => HotelsCard(hotel: hotel)).toList()),
        )
      ],
    );
  }
}
