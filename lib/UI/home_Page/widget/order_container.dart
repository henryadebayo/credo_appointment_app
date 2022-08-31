import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Navigation/routes.dart';
import '../../../utils/const/app_colors.dart';
import '../../../utils/const/app_sizedBox.dart';
import '../../../utils/dimensions/dimension.dart';
import '../../employee_page/widgets/employee_mock_data.dart';
import 'notepad_widget.dart';

class RestaurantOrderContainer extends StatelessWidget {
  const RestaurantOrderContainer({
    Key? key,
    required this.scaler,
    this.height = 42,
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [VeloxColors.smallShadow],
          color: VeloxColors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(children: [
            NotePadTab(tabItems: ['Ongoing', 'Other Orders']),
            VeloxSizedBox(
              height: 1,
            ),
            Container(
              height: scaler.sizer.setHeight(height),
              child: ListView.builder(
                  itemCount: orderItem.length,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, VeloxRoutes.orderDetail);
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 12, 5, 10),
                          child: Row(
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
                                  height: 5,
                                  width: 5,
                                  color: VeloxColors.white,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              VeloxSizedBox(
                                width: 1.5,
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(orderItem[index].name),
                                    Text(orderItem[index].timeSinceOrder)
                                  ],
                                ),
                              ),
                              VeloxSizedBox(
                                width: 1.6,
                              ),
                              Expanded(
                                child: Text(
                                  orderItem[index].itemName,
                                  maxLines: 3,
                                ),
                              ),
                              VeloxSizedBox(
                                width: 1.8,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(3),
                                  child: Container(
                                    height: scaler.sizer.setHeight(6),
                                    width: scaler.sizer.setWidth(12),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(1),
                                        color: orderItem[index].isPending
                                            ? VeloxColors.restaurantgreen
                                            : VeloxColors.restaurantorderRed),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 6),
                                      child: Column(
                                        children: [
                                          Text(
                                            orderItem[index].orderStatus,
                                            style: TextStyle(
                                                fontSize:
                                                    scaler.fontSizer.sp(30),
                                                color: VeloxColors.white),
                                          ),
                                          Text(
                                            "Order ${orderItem[index].orderNumber}",
                                            style: TextStyle(
                                                fontSize:
                                                    scaler.fontSizer.sp(28),
                                                color: VeloxColors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
            )
          ])),
    );
  }
}
