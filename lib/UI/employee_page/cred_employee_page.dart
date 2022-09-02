import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';

import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../schedule_page/widets/topCard_widget.dart';
import 'widgets/employee_widget.dart';

class EmployeeScreenn extends StatefulWidget {
  const EmployeeScreenn({Key? key}) : super(key: key);

  @override
  State<EmployeeScreenn> createState() => _EmployeeScreennState();
}

class _EmployeeScreennState extends State<EmployeeScreenn> {
  // final NavigationService _navigationService = locator<NavigationService>();
  // int itemPosition = 0;
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
              titleText: "Employee",
            ),
            const VeloxSizedBox(
              height: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 2, 22, 12),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: (
                            /*  () => _navigationService.navigateToNamed(
                              VeloxRoutes.employeeEdit,
                            )*/
                            ) {},
                        child: const Text(
                          '+Add new employee',
                          style:
                              TextStyle(color: VeloxColors.restaurantTopButton),
                        ),
                      )),
                  const VeloxSizedBox(
                    height: 1.5,
                  ),
                  SizedBox(
                    height: scaler.sizer.setHeight(65),
                    width: double.infinity,
                    child: ListView.builder(
                      itemBuilder: (context, _) => EmployeeWidget(),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
