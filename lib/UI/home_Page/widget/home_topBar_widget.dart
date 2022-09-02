import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/const/app_button.dart';
import '../../../utils/const/app_colors.dart';
import '../../../utils/const/app_sizedBox.dart';
import '../../../utils/dimensions/dimension.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
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
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: scaler.sizer.setHeight(25),
              width: double.infinity,
              color: VeloxColors.restaurantTopColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 30, 0, 12),
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
                      const VeloxSizedBox(
                        height: 1,
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: VeloxColors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: scaler.fontSizer.sp(65)),
                            children: [
                              const TextSpan(text: 'Welcome back,\n'),
                              TextSpan(text: storeName)
                            ]),
                      ),
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
                    boxShadow: const [VeloxColors.shadow1],
                    // color: VeloxColors.white,
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

                // TextField(
                //   decoration: InputDecoration(
                //     hintText: 'Search',
                //     prefixIcon: Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 16),
                //         child: SvgPicture.asset(
                //           "assets/restaurant_search.svg",
                //           width: 16,
                //           height: 16,
                //         )),
                //     filled: true,
                //     fillColor: Colors.white,
                //   ),
                // ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
