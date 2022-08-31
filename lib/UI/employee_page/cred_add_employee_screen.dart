import 'dart:ui';

import 'package:credo_appointment_app/utils/const/app_colors.dart';
import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';

import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../../utils/dimensions/dimension.dart';
import '../schedule_page/widets/res_card_widget.dart';
import 'widgets/employee_mock_data.dart';

class EmployeeEditScreen extends StatefulWidget {
  const EmployeeEditScreen({Key? key, this.employeeInfo}) : super(key: key);
  final RestaurantEmployee? employeeInfo;

  @override
  State<EmployeeEditScreen> createState() => _EmployeeEditScreenState();
}

class _EmployeeEditScreenState extends State<EmployeeEditScreen> {
  bool? isChecked = true;

  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController roleController = TextEditingController();
  TextEditingController salaryController = TextEditingController();

  @override
  void dispose() {
    idController.dispose();
    nameController.dispose();
    emailController.dispose();

    addressController.dispose();
    phoneController.dispose();
    roleController.dispose();
    salaryController.dispose();
    super.dispose();
  }

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
              titleIcon: VeloxSvgs.personIcon,
              titleText: "Edit Employee",
            ),
            const VeloxSizedBox(
              height: 3,
            ),
            buildEmployeeDetailWidget(scaler)
          ],
        )),
      ),
    );
  }

  Padding buildEmployeeDetailWidget(VeloxScaleUtil scaler) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 16, 22, 16),
      child: Container(
        width: double.infinity,
        height: scaler.sizer.setHeight(90),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: VeloxColors.white,
            boxShadow: [VeloxColors.smallShadow]),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 18, 16, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      decoration: const BoxDecoration(),
                      height: 50,
                      width: 50,
                      child: const Icon(
                        Icons.person_outline_rounded,
                      )),
                  const VeloxSizedBox(
                    width: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EditEmployeeInputWidget(
                        scaler: scaler,
                        controller: nameController,
                        widget: widget,
                        defaultText: widget.employeeInfo?.employeeName,
                        hint: 'Enter Name',
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Done',
                      style: TextStyle(
                          color: VeloxColors.restaurantTopButton,
                          fontWeight: FontWeight.w700,
                          fontSize: scaler.fontSizer.sp(60)),
                    ),
                  )
                ],
              ),
              const VeloxSizedBox(height: 3.5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Employee ID:',
                    style: TextStyle(
                      fontSize: scaler.fontSizer.sp(50),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  EditEmployeeInputWidget(
                    scaler: scaler,
                    controller: idController,
                    widget: widget,
                    defaultText: widget.employeeInfo?.employeeId,
                    hint: 'Enter Employee id Title',
                  ),
                ],
              ),
              const VeloxSizedBox(
                height: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personal Details',
                    style: TextStyle(
                      fontSize: scaler.fontSizer.sp(50),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    const Text('Phone:'),
                    EditEmployeeInputWidget(
                      scaler: scaler,
                      controller: phoneController,
                      widget: widget,
                      defaultText: widget.employeeInfo?.phoneNumber,
                      hint: '2348123456789',
                    ),
                  ]),
                  const VeloxSizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      const Text('Email: '),
                      EditEmployeeInputWidget(
                        scaler: scaler,
                        controller: emailController,
                        widget: widget,
                        defaultText: widget.employeeInfo?.email,
                        hint: 'employee@yahoo.com',
                      ),
                    ],
                  ),
                  const VeloxSizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      const Text('Address: '),
                      EditEmployeeInputWidget(
                        scaler: scaler,
                        controller: addressController,
                        widget: widget,
                        defaultText: widget.employeeInfo?.address,
                        hint: 'Enter Address Title',
                      ),
                    ],
                  ),
                ],
              ),
              const VeloxSizedBox(
                height: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Job Title:',
                    style: TextStyle(
                      fontSize: scaler.fontSizer.sp(50),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  EditEmployeeInputWidget(
                    scaler: scaler,
                    controller: roleController,
                    widget: widget,
                    defaultText: widget.employeeInfo?.jobTitle,
                    hint: 'Enter Job Title',
                  ),
                ],
              ),
              const VeloxSizedBox(
                height: 4,
              ),
              Column(
                children: [
                  Text(
                    'Salary',
                    style: TextStyle(
                      fontSize: scaler.fontSizer.sp(50),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  EditEmployeeInputWidget(
                    scaler: scaler,
                    controller: salaryController,
                    widget: widget,
                    defaultText: widget.employeeInfo?.salary,
                  ),
                ],
              ),
              const VeloxSizedBox(
                height: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          activeColor: VeloxColors.restaurantTopButton,
                          value: widget.employeeInfo != null ? true : false,
                          onChanged: (checkedValue) {
                            isChecked = checkedValue;
                          }),
                      const VeloxSizedBox(
                        width: 0.4,
                      ),
                      const Text(
                        "Permission Accessed",
                        style:
                            TextStyle(color: VeloxColors.restaurantTopButton),
                      )
                    ],
                  ),
                  Text(
                    'This Employee can access through all your business details ',
                    style: TextStyle(fontSize: scaler.fontSizer.sp(45)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EditEmployeeInputWidget extends StatelessWidget {
  const EditEmployeeInputWidget({
    Key? key,
    required this.controller,
    required this.widget,
    required this.scaler,
    required this.defaultText,
    this.hint,
  }) : super(key: key);

  final TextEditingController controller;
  final EmployeeEditScreen widget;
  final VeloxScaleUtil scaler;
  final String? defaultText;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [VeloxColors.smallShadow], color: VeloxColors.white),
      height: scaler.sizer.setHeight(5),
      width: scaler.sizer.setWidth(40),
      child: TextField(
        controller: controller..text = defaultText ?? '',
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
          hintText: hint,
        ),
        style: const TextStyle(
            color: VeloxColors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}
