import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../../utils/dimensions/dimension.dart';
import '../home_Page/widget/appointment_dat.dart';
import '../schedule_page/widets/topCard_widget.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  @override
  Widget build(BuildContext context) {
    final scaler = context.scaler;
    return Scaffold(
      backgroundColor: VeloxColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopCard(
              scaler: scaler,
              titleText: 'Requests',
            ),
            const VeloxSizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 26, 22, 20),
              child: Container(
                decoration: const BoxDecoration(
                    boxShadow: [VeloxColors.smallShadow],
                    color: VeloxColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(children: [
                    const Text('Today'),
                    const VeloxSizedBox(
                      height: 2,
                    ),
                    Container(
                      height: scaler.sizer.setHeight(70),
                      child: ListView.builder(
                          itemCount: requestItems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(2, 0, 2, 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      color: VeloxColors.white,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(requestItems[index].name),
                                        Text(requestItems[index].timeSinceOrder)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      requestItems[index].itemName,
                                      maxLines: 3,
                                    ),
                                  ),
                                  !requestItems[index].isAccepted
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            OptionButton(
                                              scaler: scaler,
                                              iconString:
                                                  VeloxSvgs.tick_good_icon,
                                              buttonColor:
                                                  VeloxColors.restaurantgreen,
                                            ),
                                            OptionButton(
                                              scaler: scaler,
                                              iconString: VeloxSvgs.x_icon,
                                              buttonColor: VeloxColors
                                                  .restaurantorderRed,
                                            ),
                                          ],
                                        )
                                      : AcceptedButton(scaler: scaler)
                                ],
                              ),
                            );
                          }),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class RestaurantTopCard {}

class OptionButton extends StatelessWidget {
  const OptionButton({
    Key? key,
    required this.scaler,
    required this.iconString,
    required this.buttonColor,
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final String iconString;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(2)),
          height: scaler.sizer.setHeight(4),
          width: scaler.sizer.setWidth(8),
          child: SvgPicture.asset(
            iconString,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}

class AcceptedButton extends StatelessWidget {
  const AcceptedButton({
    Key? key,
    required this.scaler,
  }) : super(key: key);

  final VeloxScaleUtil scaler;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: VeloxColors.restaurantgreen,
          borderRadius: BorderRadius.circular(2)),
      height: scaler.sizer.setHeight(4),
      width: scaler.sizer.setWidth(18),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            'Accepted',
            style: TextStyle(
                fontSize: scaler.fontSizer.sp(40), color: VeloxColors.white),
          ),
        ),
      ),
    );
  }
}
