import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/const/app_colors.dart';
import '../../../utils/const/app_sizedBox.dart';
import '../../../utils/dimensions/dimension.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
    required this.scaler,
    this.storeName,
    this.titleIcon = 'assets/orders_icon.svg',
    this.titleText = 'Orders',
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final String? storeName;
  final String titleText;
  final String titleIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scaler.sizer.setHeight(28),
      color: VeloxColors.white,
      child: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: scaler.sizer.setHeight(24),
            width: double.infinity,
            color: VeloxColors.restaurantTopColor,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 30, 20, 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: SvgPicture.asset(
                              "assets/restaurant_back_arrow.svg",
                              width: 9,
                              height: 18.5,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                titleIcon,
                                color: VeloxColors.white,
                                height: 30.35,
                                width: 30.56,
                              ),
                              const VeloxSizedBox(
                                width: 1,
                              ),
                              Text(
                                titleText,
                                style: TextStyle(
                                    color: VeloxColors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: scaler.fontSizer.sp(54)),
                              )
                            ],
                          ),
                          SvgPicture.asset(
                              "assets/restaurant_hamburger_icon.svg")
                        ]),
                    const Spacer(),
                  ]),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [VeloxColors.shadow1],
                  borderRadius: BorderRadius.circular(8)),
              child: TextFormField(
                  decoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0.r),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0.r),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0.r),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 19.w,
                      vertical: 15.h,
                    ),
                    hintText: "Search",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SvgPicture.asset(
                        "assets/restaurant_search.svg",
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                  onSaved: (String? lastName) {},
                  validator: (String? lastName) {
                    if (lastName!.isEmpty) {
                      String errorMessage;
                      errorMessage = "please fill in your last name";
                      return errorMessage;
                    }
                  }),
            ),
          ),
        ),
      ]),
    );
  }
}
