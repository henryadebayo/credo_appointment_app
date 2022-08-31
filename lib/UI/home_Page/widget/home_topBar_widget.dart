import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/const/app_button.dart';
import '../../../utils/const/app_colors.dart';
import '../../../utils/const/app_sizedBox.dart';
import '../../../utils/dimensions/dimension.dart';

class RestaurantHomeTopBar extends StatelessWidget {
  const RestaurantHomeTopBar({
    Key? key,
    required this.scaler,
    required this.storeName,
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final String? storeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scaler.sizer.setHeight(30),
      color: VeloxColors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: scaler.sizer.setHeight(25),
              width: double.infinity,
              color: VeloxColors.restaurantTopColor,
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 30, 0, 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: scaler.sizer.setWidth(32),
                          height: scaler.sizer.setHeight(6),
                          child: VeloxButton(
                              color: VeloxColors.restaurantTopButton,
                              verticalPadding: 1.5,
                              horizontalPadding: 6.5,
                              fontSize: 60,
                              text: 'Setup Guide',
                              onPressed: () {})),
                      VeloxSizedBox(
                        height: 1,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: VeloxColors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: scaler.fontSizer.sp(65)),
                            children: [
                              TextSpan(text: 'Welcome back,\n'),
                              TextSpan(text: storeName)
                            ]),
                      ),
                      Spacer(),
                    ]),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [VeloxColors.shadow1],
                    color: VeloxColors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: SvgPicture.asset(
                          "assets/restaurant_search.svg",
                          width: 16,
                          height: 16,
                        )),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
