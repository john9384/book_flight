import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_first_flutter/screens/home/header.dart';
import 'package:my_first_flutter/screens/home/ticket_section.dart';
import 'package:my_first_flutter/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomStyles.bgColor,
        body: ListView(
          children: const [HomeHeader(), Gap(40), UpcomingTickets()],
        ));
  }
}
