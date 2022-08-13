import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_first_flutter/screens/ticket/detail_section.dart';
import 'package:my_first_flutter/utils/app_layout.dart';
import 'package:my_first_flutter/utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(15)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(children: [
        Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21), topRight: Radius.circular(21)),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("NYC",
                        style: CustomStyles.headlineStyle3
                            .copyWith(color: Colors.black)),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.all(AppLayout.getWidth(3.0)),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(20)),
                        border: Border.all(width: 2.5, color: Colors.black),
                      ),
                    ),
                    Expanded(
                        child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SizedBox(
                            height:
                                AppLayout.getHeight(AppLayout.getHeight(20)),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.black),
                                          ))),
                                );
                              },
                            )),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.black))),
                      ],
                    )),
                    Container(
                      padding: EdgeInsets.all(AppLayout.getWidth(3.0)),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(20)),
                        border: Border.all(width: 2.5, color: Colors.black),
                      ),
                    ),
                    const Spacer(),
                    Text("LDN",
                        style: CustomStyles.headlineStyle3
                            .copyWith(color: Colors.black)),
                  ],
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text("New York",
                          style: CustomStyles.headlineStyle4.copyWith(
                            color: Colors.black,
                          )),
                    ),
                    Text("8H 30M",
                        style: CustomStyles.headlineStyle3
                            .copyWith(color: Colors.black)),
                    SizedBox(
                      width: 100,
                      child: Text("London",
                          textAlign: TextAlign.end,
                          style: CustomStyles.headlineStyle4
                              .copyWith(color: Colors.black)),
                    )
                  ],
                )
              ],
            )),
        Row(children: [
          SizedBox(
              height: AppLayout.getHeight(20),
              width: AppLayout.getWidth(10),
              child: const DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      (constraints.constrainWidth() / 15).floor(),
                      (index) => const SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.white),
                          ))),
                );
              },
            ),
          )),
          SizedBox(
              height: AppLayout.getHeight(20),
              width: AppLayout.getWidth(10),
              child: const DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
              ))
        ]),
        DetailSection(
          topLeftText: "1st May",
          bottomLeftText: "Date",
          topRightText: "23",
          bottomRightText: "Number",
          centerWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("08:00 AM",
                  style: CustomStyles.headlineStyle3
                      .copyWith(color: Colors.black)),
              Text("Depature time",
                  style:
                      CustomStyles.headlineStyle4.copyWith(color: Colors.grey)),
            ],
          ),
        ),
        Gap(AppLayout.getHeight(10)),
        const DetailSection(
          topLeftText: "Flutter DB",
          bottomLeftText: "Passenger",
          topRightText: "5221 478566",
          bottomRightText: "Passport",
        ),
        Gap(AppLayout.getHeight(10)),
        const DetailSection(
          topLeftText: "0055 444 77147",
          bottomLeftText: "Number of tickets",
          topRightText: "B2SG28",
          bottomRightText: "Booking Code",
        ),
        // Visa section
        Container(
          padding:
              const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/visa.png",
                        scale: 10,
                      ),
                      Text("*** 2462",
                          style: CustomStyles.headlineStyle3
                              .copyWith(color: Colors.black)),
                    ],
                  ),
                  Text("Payment Method",
                      style: CustomStyles.headlineStyle4
                          .copyWith(color: Colors.grey)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$249.99",
                      style: CustomStyles.headlineStyle3
                          .copyWith(color: Colors.black)),
                  const Gap(5),
                  Text("Price",
                      textAlign: TextAlign.end,
                      style: CustomStyles.headlineStyle4
                          .copyWith(color: Colors.grey)),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(AppLayout.getHeight(16)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            child: BarcodeWidget(
              barcode: Barcode.code128(),
              data: 'https://flutter.dev',
              drawText: false,
              color: CustomStyles.textColor,
              width: double.infinity,
              height: 70,
            ),
          ),
        )
      ]),
    );
  }
}
