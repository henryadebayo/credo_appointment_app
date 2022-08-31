import 'package:credo_appointment_app/UI/home_Page/widget/appointment_dat.dart';
import 'package:credo_appointment_app/UI/home_Page/widget/home_topBar_widget.dart';
import 'package:credo_appointment_app/UI/home_Page/widget/order_container.dart';
import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Navigation/locator.dart';
import '../../Navigation/nav.dart';
import '../../Navigation/routes.dart';
import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../../utils/dimensions/dimension.dart';

class AppointmentHomeScreen extends StatelessWidget {
  AppointmentHomeScreen({Key? key}) : super(key: key);
  final String? storeName = 'Katy\'s Kitchen';
  final NavigationService _navigationService = locator<NavigationService>();
  @override
  Widget build(BuildContext context) {
    final scaler = context.scaler;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 249, 249),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RestaurantHomeTopBar(scaler: scaler, storeName: storeName),
            VeloxSizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 2, 4, 12),
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
                  VeloxSizedBox(
                    height: 2,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TotalRequestsWidget(scaler: scaler),
                        VeloxSizedBox(
                          width: 3,
                        ),
                        SessionSummaryWidget(
                          scaler: scaler,
                          barColor: VeloxColors.restaurantorderRed,
                          mainText: '24',
                          subText: 'Pending Sessions',
                        ),
                        VeloxSizedBox(
                          width: 3,
                        ),
                        SessionSummaryWidget(
                          scaler: scaler,
                          barColor: Color.fromRGBO(52, 206, 150, 1),
                          mainText: '24',
                          subText: 'Completed Sessions',
                        ),
                        VeloxSizedBox(
                          width: 3,
                        ),
                        SessionSummaryWidget(
                          scaler: scaler,
                          barColor: Color.fromRGBO(235, 239, 40, 1),
                          mainText: '24',
                          subText: 'Cancelled Sessions',
                        ),
                      ],
                    ),
                  ),
                  VeloxSizedBox(
                    height: 4.5,
                  ),
                  Center(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ToolOptionItem(
                              scaler: scaler,
                              index: 0,
                              onClick: () => _navigationService.navigateToNamed(
                                  VeloxRoutes.appointmentSchedule),
                            ),
                            ToolOptionItem(
                              scaler: scaler,
                              index: 1,
                              onClick: () => _navigationService.navigateToNamed(
                                  VeloxRoutes.appointmentCheckout),
                            ),
                            ToolOptionItem(
                              scaler: scaler,
                              index: 2,
                              onClick: () => _navigationService.navigateToNamed(
                                  VeloxRoutes.appointmentRequest),
                            ),
                            ToolOptionItem(
                              scaler: scaler,
                              index: 3,
                              onClick: () => _navigationService
                                  .navigateToNamed(VeloxRoutes.transactions),
                            ),
                            ToolOptionItem(
                              scaler: scaler,
                              index: 4,
                              onClick: () => _navigationService
                                  .navigateToNamed(VeloxRoutes.employee),
                            ),
                          ],
                        )),
                  ),
                  VeloxSizedBox(
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
                        VeloxSizedBox(
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
                  VeloxSizedBox(
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

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({
    Key? key,
    required this.scaler,
    required this.mainTitle,
    required this.firstItemTitle,
    required this.firstItemSubTitle,
    required this.firstItemIcon,
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final String mainTitle;
  final String firstItemTitle;
  final String firstItemSubTitle;
  final String firstItemIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scaler.sizer.setHeight(22),
      decoration: BoxDecoration(
          color: VeloxColors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                child: Text(
              mainTitle,
              style: TextStyle(fontWeight: FontWeight.w700),
            )),
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      firstItemIcon,
                      height: scaler.sizer.setHeight(4),
                      width: scaler.sizer.setWidth(2),
                      fit: BoxFit.scaleDown,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(firstItemTitle),
                        Text(
                          firstItemSubTitle,
                          style: TextStyle(
                              color: VeloxColors.restaurantTopButton,
                              fontWeight: FontWeight.bold,
                              fontSize: scaler.fontSizer.sp(60)),
                        )
                      ],
                    ),
                    VeloxSizedBox(
                      width: 2,
                    ),
                    SvgPicture.asset(
                      VeloxSvgs.reportsRevenueIcon,
                      height: scaler.sizer.setHeight(4),
                      width: scaler.sizer.setWidth(2),
                      fit: BoxFit.scaleDown,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Revenue'),
                        Text(
                          ' ₦11530',
                          style: TextStyle(
                              color: VeloxColors.restaurantTopButton,
                              fontWeight: FontWeight.bold,
                              fontSize: scaler.fontSizer.sp(60)),
                        )
                      ],
                    ),
                  ]),
            ),
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      VeloxSvgs.reportsNairaIcon,
                      height: scaler.sizer.setHeight(4),
                      width: scaler.sizer.setWidth(2),
                      fit: BoxFit.scaleDown,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cost'),
                        Text(
                          '₦11530',
                          style: TextStyle(
                              color: VeloxColors.restaurantTopButton,
                              fontWeight: FontWeight.bold,
                              fontSize: scaler.fontSizer.sp(60)),
                        )
                      ],
                    ),
                    VeloxSizedBox(width: 8),
                    SvgPicture.asset(
                      VeloxSvgs.reportsProfit,
                      height: scaler.sizer.setHeight(4),
                      width: scaler.sizer.setWidth(2),
                      fit: BoxFit.scaleDown,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Profit'),
                        Text(
                          ' ₦11530',
                          style: TextStyle(
                              color: VeloxColors.restaurantTopButton,
                              fontWeight: FontWeight.bold,
                              fontSize: scaler.fontSizer.sp(60)),
                        )
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}

class SessionSummaryWidget extends StatelessWidget {
  const SessionSummaryWidget({
    Key? key,
    required this.scaler,
    required this.barColor,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final Color barColor;
  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: VeloxColors.white),
      height: scaler.sizer.setHeight(16),
      width: scaler.sizer.setWidth(55),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(mainText,
                  style: TextStyle(
                      color: VeloxColors.restaurantTopButton,
                      fontSize: scaler.fontSizer.sp(80),
                      fontWeight: FontWeight.w600)),
              Container(
                  color: barColor,
                  height: scaler.sizer.setHeight(3),
                  width: scaler.sizer.setWidth(1.5))
            ]),
            Text(subText,
                style: TextStyle(
                    color: VeloxColors.restaurantTopButton,
                    fontSize: scaler.fontSizer.sp(50),
                    fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }
}

class TotalRequestsWidget extends StatelessWidget {
  const TotalRequestsWidget({
    Key? key,
    required this.scaler,
  }) : super(key: key);

  final VeloxScaleUtil scaler;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: VeloxColors.restaurantTopButton),
      height: scaler.sizer.setHeight(16),
      width: scaler.sizer.setWidth(55),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('247',
                style: TextStyle(
                    color: VeloxColors.white,
                    fontSize: scaler.fontSizer.sp(80),
                    fontWeight: FontWeight.w600)),
            Text('Total requests',
                style: TextStyle(
                    color: VeloxColors.white,
                    fontSize: scaler.fontSizer.sp(50),
                    fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }
}

class ToolOptionItem extends StatelessWidget {
  const ToolOptionItem({
    Key? key,
    required this.scaler,
    required this.index,
    required this.onClick,
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final int index;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick();
      },
      child: Container(
        height: scaler.sizer.setHeight(11.5),
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: 50,
                  decoration: BoxDecoration(
                      boxShadow: [VeloxColors.smallShadow],
                      borderRadius: BorderRadius.circular(5),
                      color: VeloxColors.white),
                  child: SvgPicture.asset(
                    appointmentToolOption[index].image,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              VeloxSizedBox(
                height: 0.5,
              ),
              Text(appointmentToolOption[index].itemLabel)
            ],
          ),
        ),
      ),
    );
  }
}
