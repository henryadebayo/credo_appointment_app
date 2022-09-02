import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/const/app_button.dart';
import '../../../utils/const/app_colors.dart';
import '../../../utils/const/app_sizedBox.dart';
import '../../../utils/dimensions/dimension.dart';

class FormBodyWidget extends StatelessWidget {
  const FormBodyWidget({
    Key? key,
    required this.scaler,
  }) : super(key: key);

  final VeloxScaleUtil scaler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 16, 22, 16),
      child: Container(
        height: scaler.sizer.setHeight(150),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: VeloxColors.white,
            boxShadow: [VeloxColors.smallShadow]),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add a Schedule',
                style: TextStyle(
                    color: VeloxColors.restaurantTopColor,
                    fontWeight: FontWeight.w500,
                    fontSize: scaler.fontSizer.sp(60)),
              ),
              const VeloxSizedBox(height: 2),
              Text(
                'SERVICE DETAILS',
                style: TextStyle(
                    color: VeloxColors.restaurantTopButton,
                    fontWeight: FontWeight.w500,
                    fontSize: scaler.fontSizer.sp(48)),
              ),
              const VeloxSizedBox(height: 2),
              CustomTextField(
                  scaler: scaler,
                  hint: '',
                  fieldLabel: 'Title *',
                  hasPrefixIcon: false),
              CustomTextField(
                  scaler: scaler,
                  hint: '',
                  fieldLabel: 'Price *',
                  hasPrefixIcon: false),
              CustomTextField(
                  scaler: scaler,
                  hint: '',
                  fieldLabel: 'Service *',
                  hasPrefixIcon: false),
              CustomTextField(
                  scaler: scaler,
                  hint: '',
                  fieldLabel: 'Assigned To *',
                  hasPrefixIcon: false),
              SizedBox(
                height: 16.0.h,
              ),
              Text(
                'Customer Details',
                style: TextStyle(
                    color: VeloxColors.restaurantTopButton,
                    fontWeight: FontWeight.w500,
                    fontSize: scaler.fontSizer.sp(48)),
              ),
              SizedBox(
                height: 12.0.h,
              ),
              CustomTextField(
                  scaler: scaler,
                  hint: '',
                  fieldLabel: 'Name *',
                  hasPrefixIcon: false),
              CustomTextField(
                  scaler: scaler,
                  hint: '',
                  fieldLabel: 'Phone *',
                  hasPrefixIcon: false),
              CustomTextField(
                  scaler: scaler,
                  hint: '',
                  fieldLabel: 'Email *',
                  hasPrefixIcon: false),
              CustomTextField(
                  scaler: scaler,
                  hint: '',
                  fieldLabel: 'Title *',
                  hasPrefixIcon: false),
              const VeloxSizedBox(
                height: 3.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: VeloxButton(
                          color: VeloxColors.white,
                          textColor: VeloxColors.restaurantTopButton,
                          text: 'Cancel',
                          onPressed: () {})),
                  Expanded(child: VeloxButton(text: 'Done', onPressed: () {})),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
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
              fontSize: scaler.fontSizer.sp(50)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 13),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: VeloxColors.dropDownColor),
          child: SizedBox(
            height: 45.0.h,
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

          // TextField(
          //   keyboardType: inputType,
          //   decoration: InputDecoration(
          //       prefixIcon: hasPrefixIcon
          //           ? SvgPicture.asset(
          //               prefixIconString ?? '',
          //               fit: BoxFit.scaleDown,
          //             )
          //           : null,
          //       hintText: hint,
          //       hintStyle:
          //           TextStyle(color: const Color.fromRGBO(149, 147, 147, 1)),
          //       focusedBorder: OutlineInputBorder(
          //         borderSide: BorderSide(color: VeloxColors.restaurantTopColor),
          //       )),
          // ),
        ),
      ],
    );
  }
}
