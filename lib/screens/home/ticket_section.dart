import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../components/ticket_view.dart';
import '../../utils/app_styles.dart';

class UpcomingTickets extends StatelessWidget {
  const UpcomingTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Upcoming Flights", style: CustomStyles.headlineStyle2),
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
          child: Row(children: const [
            TicketView(),
            TicketView(),
            TicketView(),
          ]),
        )
      ],
    );
  }
}
