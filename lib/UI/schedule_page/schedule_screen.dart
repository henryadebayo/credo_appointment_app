import 'package:credo_appointment_app/UI/schedule_page/widets/res_card_widget.dart';
import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../../utils/dimensions/dimension.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List daysOfTheWeek = [
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thur',
    'Fri',
    'Sat',
  ];
  String timeFrame = 'Week';
  @override
  Widget build(BuildContext context) {
    final scaler = context.scaler;
    return Scaffold(
      backgroundColor: VeloxColors.dropDownColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RestaurantTopCard(
                scaler: scaler,
                titleText: "Schedule",
              ),
              VeloxSizedBox(
                height: 4,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                child: Column(children: [
                  buildTimeFramDropDown(scaler),
                  VeloxSizedBox(
                    height: 3,
                  ),
                  Container(
                    height: scaler.sizer.setHeight(40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: VeloxColors.white),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: GridView.count(
                          crossAxisCount: 7,
                          shrinkWrap: true,
                          crossAxisSpacing: 1.0,
                          mainAxisSpacing: 1.0,
                          childAspectRatio: 0.86,
                          children: List<Widget>.generate(
                              36,
                              (index) => Container(
                                    decoration: BoxDecoration(
                                        color: index == 7 && index == 18
                                            ? VeloxColors.restaurantTopButton
                                            : VeloxColors.white,
                                        border: Border.all(
                                            color: VeloxColors
                                                .appointmentsBackgroundColor),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: Text(index < 7
                                          ? daysOfTheWeek[index]
                                          : (index - 6).toString()),
                                    ),
                                  )),
                        )
                        // DataTable2(
                        //   columns: List<DataColumn2>.generate(
                        //       7,
                        //       (index) => DataColumn2(
                        //             size: ColumnSize.M,
                        //             label: Text(daysOfTheWeek[index]),
                        //           )),
                        //   rows: List<DataRow>.generate(
                        //       6,
                        //       (index) => DataRow(cells: [
                        //             DataCell(Text(
                        //               (index + 1).toString(),
                        //             )),
                        //             DataCell(Text(
                        //               (index + 2).toString(),
                        //             )),
                        //             DataCell(Text(
                        //               (index + 3).toString(),
                        //             )),
                        //             DataCell(Text(
                        //               (index + 4).toString(),
                        //             )),
                        //             DataCell(Text(
                        //               (index + 5).toString(),
                        //             )),
                        //             DataCell(Text(
                        //               (index + 6).toString(),
                        //             )),
                        //             DataCell(Text(
                        //               (index + 7).toString(),
                        //             )),
                        //           ])),
                        //   border: TableBorder(
                        //     horizontalInside: BorderSide(
                        //       width: 0.5,
                        //       color: VeloxColors.darkGrey,
                        //     ),
                        //     verticalInside: BorderSide(
                        //       width: 0.5,
                        //       color: VeloxColors.darkGrey,
                        //     ),
                        //   ),
                        // ),
                        ),
                  ),
                  VeloxSizedBox(
                    height: 3,
                  ),
                  DetailsWidget(scaler: scaler)
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding buildTimeFramDropDown(VeloxScaleUtil scaler) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(196, 196, 196, 1)),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(3)),
          height: scaler.sizer.setHeight(5.5),
          width: scaler.sizer.setWidth(35),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4, 1, 1, 1),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 1, 5, 1),
                    child: Icon(
                      Icons.calendar_today_outlined,
                      color: VeloxColors.restaurantTopButton,
                      size: 15,
                    ),
                  ),
                  Text(
                    timeFrame,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: VeloxColors.restaurantTopButton),
                  ),
                  PopupMenuButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      icon: Icon(
                        Icons.expand_more,
                      ),
                      onSelected: (String value) {
                        setState(() {
                          timeFrame = value;
                        });
                      },
                      tooltip: 'Time frame',
                      elevation: 20,
                      enableFeedback: true,
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              child: Text('Week'),
                              value: 'Week',
                            ),
                            PopupMenuItem(child: Text('Month'), value: 'Month')
                          ]),
                ]),
          ),
        ),
      ),
    );
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    Key? key,
    required this.scaler,
  }) : super(key: key);

  final VeloxScaleUtil scaler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        height: scaler.sizer.setHeight(45),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: VeloxColors.white),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              VeloxSizedBox(
                height: 1.5,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.5),
                      color: VeloxColors.restaurantTopButton,
                    ),
                    height: 31,
                    width: 31,
                    child: SvgPicture.asset(
                      'assets/user.svg',
                      height: 2,
                      width: 2,
                      color: VeloxColors.white,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  VeloxSizedBox(
                    width: 4,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Christo Josh',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '012-9983457123',
                        style:
                            TextStyle(color: VeloxColors.restaurantTopButton),
                      ),
                    ],
                  )
                ],
              ),
              VeloxSizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monday,11 OCT',
                        style: TextStyle(
                            fontSize: scaler.fontSizer.sp(40),
                            fontWeight: FontWeight.w600),
                      ),
                      VeloxSizedBox(
                        height: 2,
                      ),
                      Text(
                        'Monday,11 OCT',
                        style: TextStyle(
                            fontSize: scaler.fontSizer.sp(60),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '4:30pm',
                        style: TextStyle(
                            color: VeloxColors.restaurantTopButton,
                            fontSize: scaler.fontSizer.sp(40),
                            fontWeight: FontWeight.w600),
                      ),
                      VeloxSizedBox(
                        height: 2,
                      ),
                      Text(
                        '₦ 299',
                        style: TextStyle(
                            fontSize: scaler.fontSizer.sp(60),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              VeloxSizedBox(
                height: 2,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Prepaid',
                  style: TextStyle(
                      color: Color.fromRGBO(52, 206, 150, 1),
                      fontSize: scaler.fontSizer.sp(40),
                      fontWeight: FontWeight.w500),
                ),
              ),
              Text(
                'Assigned To:',
                style: TextStyle(
                    fontSize: scaler.fontSizer.sp(40),
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Container(
                    height: scaler.sizer.setHeight(11),
                    width: scaler.sizer.setWidth(13),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(VeloxImages.sampleEmployeeImg3))),
                  ),
                  VeloxSizedBox(
                    width: 2.5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lema',
                        style: TextStyle(
                            fontSize: scaler.fontSizer.sp(60),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Hairdresser',
                        style: TextStyle(
                            color: VeloxColors.dividerDark,
                            fontSize: scaler.fontSizer.sp(50),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
