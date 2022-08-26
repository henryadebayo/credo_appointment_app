import 'package:credo_appointment_app/UI/schedule_page/widets/res_card_widget.dart';
import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/const/app_button.dart';
import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/dimensions/dimension.dart';

class CreateScheduleScreen extends StatefulWidget {
  const CreateScheduleScreen({Key? key}) : super(key: key);

  @override
  State<CreateScheduleScreen> createState() => _CreateScheduleScreenState();
}

class _CreateScheduleScreenState extends State<CreateScheduleScreen> {
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
            RestaurantTopCard(
              scaler: scaler,
              titleText: "Add Schedule",
            ),
            VeloxSizedBox(
              height: 4,
            ),
            FormBodyWidget(scaler: scaler)
          ],
        ),
      )),
    );
  }
}

class FormBodyWidget extends StatelessWidget {
  const FormBodyWidget({
    Key? key,
    required this.scaler,
  }) : super(key: key);

  final VeloxScaleUtil scaler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(22, 16, 22, 16),
      child: Container(
        height: scaler.sizer.setHeight(90),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: VeloxColors.white,
            boxShadow: [VeloxColors.smallShadow]),
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 18, 16, 14),
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
              VeloxSizedBox(height: 2),
              Text(
                'SERVICE DETAILS',
                style: TextStyle(
                    color: VeloxColors.restaurantTopButton,
                    fontWeight: FontWeight.w500,
                    fontSize: scaler.fontSizer.sp(48)),
              ),
              VeloxSizedBox(height: 2),
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
              Text(
                'Customer Details',
                style: TextStyle(
                    color: VeloxColors.restaurantTopButton,
                    fontWeight: FontWeight.w500,
                    fontSize: scaler.fontSizer.sp(48)),
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
              VeloxSizedBox(
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
              fontWeight: FontWeight.w600,
              fontSize: scaler.fontSizer.sp(65)),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 13),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: VeloxColors.dropDownColor),
          child: TextField(
            keyboardType: inputType,
            decoration: InputDecoration(
                prefixIcon: hasPrefixIcon
                    ? SvgPicture.asset(
                        prefixIconString ?? '',
                        fit: BoxFit.scaleDown,
                      )
                    : null,
                hintText: hint,
                hintStyle: TextStyle(color: Color.fromRGBO(149, 147, 147, 1)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: VeloxColors.restaurantTopColor),
                )),
          ),
        ),
      ],
    );
  }
}
