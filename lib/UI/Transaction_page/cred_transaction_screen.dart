import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../../utils/const/images.dart';
import '../../utils/dimensions/dimension.dart';
import '../employee_page/widgets/employee_mock_data.dart';
import '../schedule_page/widets/topCard_widget.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
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
              titleIcon: VeloxSvgs.slideIcon,
              titleText: "Transactions",
            ),
            const VeloxSizedBox(
              height: 3,
            ),
            TransactionBodyWidget(scaler)
          ],
        )),
      ),
    );
  }

  Padding TransactionBodyWidget(VeloxScaleUtil scaler) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 26, 22, 20),
      child: Container(
        decoration: const BoxDecoration(
            boxShadow: [VeloxColors.smallShadow],
            color: VeloxColors.white,
            borderRadius: const BorderRadius.all(const Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Transaction",
                    style: TextStyle(
                        fontSize: scaler.fontSizer.sp(60),
                        fontWeight: FontWeight.w500,
                        color: VeloxColors.black),
                  ),
                  const Spacer(),
                  SvgPicture.asset(VeloxSvgs.sortByIcon),
                  const VeloxSizedBox(
                    width: 2,
                  ),
                  Text(
                    'Sort by',
                    style: TextStyle(
                        fontSize: scaler.fontSizer.sp(40),
                        fontWeight: FontWeight.w500,
                        color: VeloxColors.black),
                  )
                ],
              ),
              const VeloxSizedBox(
                height: 1,
              ),
              Container(
                height: scaler.sizer.setHeight(60),
                child: ListView.builder(
                    itemCount: transactionList.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.fromLTRB(5, 12, 5, 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.5),
                                  color: VeloxColors.restaurantTopButton,
                                ),
                                height: 31,
                                width: 31,
                                child: SvgPicture.asset(
                                  transactionList[index].isRefund
                                      ? VeloxSvgs.refundIcon
                                      : VeloxSvgs.discountAppliedIcon,
                                  height: 3,
                                  width: 3,
                                  color: VeloxColors.white,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              const VeloxSizedBox(
                                width: 2,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      transactionList[index].status,
                                      style: const TextStyle(
                                          color: VeloxColors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      transactionList[index].time,
                                      style: TextStyle(
                                          fontSize: scaler.fontSizer.sp(28)),
                                    ),
                                  ]),
                              const Spacer(),
                              Column(
                                children: [
                                  Text(
                                    transactionList[index].amount,
                                    style: const TextStyle(
                                        color: VeloxColors.restaurantTopButton,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    transactionList[index].date,
                                    style: TextStyle(
                                        fontSize: scaler.fontSizer.sp(34)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
