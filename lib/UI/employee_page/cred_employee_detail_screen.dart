import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';

import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../../utils/dimensions/dimension.dart';
import '../schedule_page/widets/topCard_widget.dart';

class EmployeeDetailScreen extends StatefulWidget {
  const EmployeeDetailScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeDetailScreen> createState() => _EmployeeDetailScreenState();
}

class _EmployeeDetailScreenState extends State<EmployeeDetailScreen> {
  bool? isChecked = true;

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
              titleIcon: VeloxSvgs.personIcon,
              titleText: "Employee Detail",
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
        height: scaler.sizer.setHeight(75),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: VeloxColors.white,
            boxShadow: const [VeloxColors.smallShadow]),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 18, 16, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.green),
                    height: 50,
                    width: 50,
                  ),
                  const VeloxSizedBox(
                    width: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "employeeName",
                        style: TextStyle(
                            color: VeloxColors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "  mployeeInfo.jobTitle",
                        style: TextStyle(
                            color: VeloxColors.lightGrey,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      // _navigationService.navigateToNamed(
                      //     VeloxRoutes.employeeEdit,
                      //     arguments: widget.employeeInfo);
                    },
                    child: Text(
                      'Edit',
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
                  Text(
                    " widget.employeeInfo.employeeId,",
                    style: TextStyle(
                        fontSize: scaler.fontSizer.sp(50),
                        fontWeight: FontWeight.w900,
                        color: VeloxColors.restaurantTopButton),
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
                  const Text('Phone: 1234567878'),
                  const Text('Email: sdfgh@dfgh}'),
                  const Text('Address: kjhgfdsazxcvbnm, xf'),
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
                  Text(
                    "widget.employeeInfo.jobTitle",
                    style: TextStyle(
                      color: VeloxColors.restaurantTopButton,
                      fontSize: scaler.fontSizer.sp(50),
                      fontWeight: FontWeight.w600,
                    ),
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
                  Text(
                    '₦ 20000',
                    style: TextStyle(
                      color: VeloxColors.restaurantTopButton,
                      fontSize: scaler.fontSizer.sp(50),
                      fontWeight: FontWeight.w600,
                    ),
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
                          value: isChecked,
                          onChanged: (checkedValue) {
                            setState(() {
                              isChecked = checkedValue;
                            });
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
