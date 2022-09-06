import 'package:credo_appointment_app/UI/order_page/widgets/requests_widget.dart';
import 'package:credo_appointment_app/utils/extentions/extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/const/app_colors.dart';
import '../../utils/const/app_sizedBox.dart';
import '../schedule_page/widets/topCard_widget.dart';

class CredRequestsScreen extends StatefulWidget {
  const CredRequestsScreen({Key? key}) : super(key: key);

  @override
  State<CredRequestsScreen> createState() => _CredRequestsScreenState();
}

class _CredRequestsScreenState extends State<CredRequestsScreen> {
  @override
  Widget build(BuildContext context) {
    final scaler = context.scaler;
    return Scaffold(
      body: Column(
        children: [
          TopCard(
            scaler: scaler,
            titleText: 'Requests',
          ),
          const VeloxSizedBox(
            height: 3,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0.r),
                        topRight: Radius.circular(10.0.r)),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.appOxbloodColor,
                          offset: const Offset(0, 3.0),
                          blurRadius: 0.9)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16.0.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Requests",
                                style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0.sp),
                              ),
                              Container(
                                height: 4.0.h,
                                width: 120.0.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0.r),
                                  color: AppColors.appOxbloodColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "TODAY",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: ListView.builder(
                        itemBuilder: (context, _) => const RequestWidget(),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
