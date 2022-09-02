import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/const/app_colors.dart';
import '../../../utils/dimensions/dimension.dart';

class CustomCardInfoField extends StatelessWidget {
  const CustomCardInfoField(
      {Key? key,
      required this.scaler,
      required this.hint,
      required this.fieldLabel,
      this.prefixIconString,
      required this.hasPrefixIcon,
      this.inputType = TextInputType.number})
      : super(key: key);

  final VeloxScaleUtil scaler;
  final String hint;
  final String fieldLabel;
  final String? prefixIconString;
  final bool hasPrefixIcon;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldLabel,
          style: TextStyle(
              color: VeloxColors.restaurantTopButton,
              fontWeight: FontWeight.w400,
              fontSize: scaler.fontSizer.sp(50)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 13),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: VeloxColors.dropDownColor),
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
                prefixIcon: hasPrefixIcon
                    ? SvgPicture.asset(
                        prefixIconString ?? '',
                        fit: BoxFit.scaleDown,
                      )
                    : null,
                hintText: hint,
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
      ],
    );
  }
}
