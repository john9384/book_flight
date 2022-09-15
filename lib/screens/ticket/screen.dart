import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_first_flutter/components/ticket_card.dart';
import 'package:my_first_flutter/screens/ticket/ticket_view.dart';
import 'package:my_first_flutter/utils/app_styles.dart';

import '../../utils/app_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        body: Stack(children: [
      ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(10),
              vertical: AppLayout.getWidth(10)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets", style: CustomStyles.headlineStyle1),
            Gap(AppLayout.getHeight(20)),
            FittedBox(
              child: Container(
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(50)),
                    color: const Color(0xFFF4F6FD)),
                child: Row(children: [
                  Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.white),
                      child: const Center(child: Text("Airline Tickets"))),
                  Container(
                      width: size.width * 0.44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.transparent),
                      child: const Center(child: Text("Hotels")))
                ]),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const TicketView()),
            Gap(AppLayout.getHeight(20)),
            Container(
              width: size.width * 0.85,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: const TicketCard(),
            )
          ]),
    ]));
  }
}
