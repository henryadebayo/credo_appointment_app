import 'package:credo_appointment_app/UI/home_Page/widget/home_overWeight_widget.dart';
import 'package:credo_appointment_app/UI/home_Page/widget/home_toolOption.dart';
import 'package:credo_appointment_app/UI/home_Page/widget/home_topBar_widget.dart';
import 'package:credo_appointment_app/UI/home_Page/widget/home_total_widget.dart';
import 'package:credo_appointment_app/UI/home_Page/widget/order_container.dart';
import 'package:credo_appointment_app/UI/home_Page/widget/session_summery_widget.dart';
import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final String? storeName = 'Katy\'s Kitchen';
  @override
  Widget build(BuildContext context) {
    final scaler = context.scaler;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 249, 249),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeTopBar(scaler: scaler, storeName: storeName),
            const VeloxSizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 2, 4, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Overview!',
                    style: TextStyle(
                        color: VeloxColors.restaurantTopButton,
                        fontSize: scaler.fontSizer.sp(60),
                        fontWeight: FontWeight.w400),
                  ),
                  const VeloxSizedBox(
                    height: 2,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TotalRequestsWidget(scaler: scaler),
                        const VeloxSizedBox(
                          width: 3,
                        ),
                        SessionSummaryWidget(
                          scaler: scaler,
                          barColor: VeloxColors.restaurantorderRed,
                          mainText: '24',
                          subText: 'Pending Sessions',
                        ),
                        const VeloxSizedBox(
                          width: 3,
                        ),
                        SessionSummaryWidget(
                          scaler: scaler,
                          barColor: const Color.fromRGBO(52, 206, 150, 1),
                          mainText: '24',
                          subText: 'Completed Sessions',
                        ),
                        const VeloxSizedBox(
                          width: 3,
                        ),
                        SessionSummaryWidget(
                          scaler: scaler,
                          barColor: const Color.fromRGBO(235, 239, 40, 1),
                          mainText: '24',
                          subText: 'Cancelled Sessions',
                        ),
                      ],
                    ),
                  ),
                  const VeloxSizedBox(
                    height: 4.5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.0.w,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ToolOptionItem(
                              index: 0,
                              onClick: () {
                                Navigator.pushNamed(context, "ScheduleScreen");
                              }),
                          ToolOptionItem(
                              index: 1,
                              onClick: () {
                                Navigator.pushNamed(context, "CheckoutScreen");
                              }),
                          ToolOptionItem(
                              index: 2,
                              onClick: () {
                                Navigator.pushNamed(context, "RequestsScreen");
                              }),
                          ToolOptionItem(
                              index: 3,
                              onClick: () {
                                Navigator.pushNamed(
                                    context, "TransactionScreen");
                              }),
                          ToolOptionItem(
                              index: 4,
                              onClick: () {
                                Navigator.pushNamed(
                                    context, "EmployeeDetailScreen");
                              }),
                        ],
                      ),
                    ),
                  ),
                  const VeloxSizedBox(
                    height: 3.5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OverviewWidget(
                          scaler: scaler,
                          mainTitle: 'Sales Overview',
                          firstItemTitle: "Total Sessions",
                          firstItemSubTitle: "780",
                          firstItemIcon: VeloxSvgs.shoppingBagIcon,
                        ),
                        const VeloxSizedBox(
                          width: 2.5,
                        ),
                        OverviewWidget(
                          scaler: scaler,
                          mainTitle: 'Inventory Summary',
                          firstItemTitle: "No of Purchase",
                          firstItemSubTitle: "780",
                          firstItemIcon: VeloxSvgs.reportsCartIcon,
                        ),
                      ],
                    ),
                  ),
                  const VeloxSizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(1, 1, 22, 0),
                    child: RestaurantOrderContainer(scaler: scaler),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
