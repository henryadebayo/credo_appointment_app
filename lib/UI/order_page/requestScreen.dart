import 'package:credo_appointment_app/UI/order_page/widgets/requests_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/const/app_colors.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height / 3 - 70,
            width: width,
            color: AppColors.appBarAshColor,
            child: SafeArea(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 16.0.w, right: 16.0.h, top: 16.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              Text(
                                "Requests",
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 15.0),
                              ),
                            ]),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.view_headline,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0.h,
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
