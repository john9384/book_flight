import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_first_flutter/screens/search/flight_activity.dart';
import 'package:my_first_flutter/screens/search/upcoming_flight.dart';
import 'package:my_first_flutter/utils/app_layout.dart';
import 'package:my_first_flutter/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: CustomStyles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are\nyou looking for?",
                style: CustomStyles.headlineStyle1
                    .copyWith(fontSize: AppLayout.getHeight(35))),
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
            Gap(AppLayout.getHeight(25)),
            const FlightActivity(
                activityIcon: Icons.flight_takeoff_rounded,
                activityText: "Departure"),
            Gap(AppLayout.getHeight(15)),
            const FlightActivity(
                activityIcon: Icons.flight_land_rounded,
                activityText: "Arrival"),
            Gap(AppLayout.getHeight(20)),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(17),
                    horizontal: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: const Color(0xD91130CE),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getWidth(10))),
                child: const Center(
                    child: Text("Find Ticket",
                        style: TextStyle(color: Colors.white)))),
            Gap(AppLayout.getHeight(20)),
            const UpcomingFlightsSection()
          ],
        ));
  }
}
