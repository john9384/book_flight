import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../components/ticket_card.dart';
import '../../utils/app_layout.dart';
import '../../utils/app_styles.dart';

class UpcomingTickets extends StatelessWidget {
  const UpcomingTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
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
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [
            Container(
              width: size.width * 0.85,
              margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
              child: const TicketCard(),
            ),
            Container(
              width: size.width * 0.85,
              margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
              child: const TicketCard(),
            ),
            Container(
              width: size.width * 0.85,
              margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
              child: const TicketCard(),
            ),
            Container(
              width: size.width * 0.85,
              margin: EdgeInsets.only(right: AppLayout.getWidth(16)),
              child: const TicketCard(),
            ),
          ]),
        )
      ],
    );
  }
}
