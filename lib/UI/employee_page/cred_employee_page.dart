import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Navigation/nav.dart';
import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../schedule_page/widets/res_card_widget.dart';
import 'widgets/employee_mock_data.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
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
            RestaurantTopCard(
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
                        itemCount: employeeList.length,
                        itemBuilder: (context, index) {
                          // itemPosition = index;
                          return Container(
                            color: Colors.green,
                          );
                          // EmployeeListItem(
                          //   index: index,
                          //   navigationService: _navigationService);
                        }),
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

class EmployeeListItem extends StatelessWidget {
  const EmployeeListItem({
    Key? key,
    required NavigationService navigationService,
    required this.index,
  })  : _navigationService = navigationService,
        super(key: key);

  final NavigationService _navigationService;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // _navigationService.navigateToNamed(VeloxRoutes.employeeDetails,
        //     arguments: employeeList[index]);
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(5, 12, 5, 10),
        child: Container(
          decoration: BoxDecoration(
              color: VeloxColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [VeloxColors.smallShadow]),
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage(employeeList[index].employeeImage))),
                    height: 50,
                    width: 50,
                  ),
                  VeloxSizedBox(
                    width: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        employeeList[index].employeeName,
                        style: TextStyle(
                            color: VeloxColors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        employeeList[index].jobTitle,
                        style: TextStyle(
                            color: VeloxColors.lightGrey,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(VeloxSvgs.redArrowForward)
                ],
              )),
        ),
      ),
    );
  }
}
