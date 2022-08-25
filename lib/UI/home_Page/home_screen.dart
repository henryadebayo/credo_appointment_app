import 'package:credo_appointment_app/UI/home_Page/widget/home_small_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/const/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                padding: EdgeInsets.only(left: 16.0.w, top: 16.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.0.h,
                      width: 120.0.w,
                      color: AppColors.appOxbloodColor,
                      child: Center(
                        child: Text(
                          "Setup Guide",
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Text(
                      "Welcome back,\nKaty's Kitchen",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 16.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.0.w,
                    ),
                    child: Text(
                      "Overview!",
                      style: GoogleFonts.poppins(
                          color: AppColors.appOxbloodColor, fontSize: 16.0.sp),
                    ),
                  ),
                  SizedBox(
                    height: 10.0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.0.w,
                    ),
                    child: SizedBox(
                      height: 110.0.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, int index) => Padding(
                          padding: EdgeInsets.only(right: 16.0.w),
                          child: Container(
                            height: 100.0.h,
                            width: 230.0.w,
                            decoration: BoxDecoration(
                              color: AppColors.appOxbloodColor,
                              borderRadius: BorderRadius.circular(10.0.r),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 40.0.w, top: 18.0.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "247",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white, fontSize: 35.0.sp),
                                  ),
                                  SizedBox(
                                    height: 8.0.h,
                                  ),
                                  Text(
                                    "Total requests",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeSmallWidget(
                          label: "Schedule",
                          icon: Icons.error,
                        ),
                        HomeSmallWidget(
                          label: "checkout",
                          icon: Icons.error,
                        ),
                        HomeSmallWidget(
                          label: "requests",
                          icon: Icons.error,
                        ),
                        HomeSmallWidget(
                          label: "Transactions",
                          icon: Icons.error,
                        ),
                        HomeSmallWidget(
                          label: "Employee",
                          icon: Icons.error,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  SizedBox(
                    height: 120.0.w,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0.r),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0, 3.0),
                                        blurRadius: 0.9)
                                  ]),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 8.0.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 8.0.h,
                                        bottom: 8.0.h,
                                      ),
                                      child: Text(
                                        "Sales Overview",
                                        style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Wrap(
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.appOxbloodColor,
                                              size: 33.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "sessions",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0),
                                                ),
                                                Text(
                                                  "780",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.appOxbloodColor,
                                              size: 33.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "sessions",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0),
                                                ),
                                                Text(
                                                  "780",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Wrap(
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.appOxbloodColor,
                                              size: 33.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "sessions",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0),
                                                ),
                                                Text(
                                                  "780",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.appOxbloodColor,
                                              size: 33.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "sessions",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0),
                                                ),
                                                Text(
                                                  "780",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.0.w,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5.0.r),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0, 3.0),
                                        blurRadius: 0.9)
                                  ]),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 8.0.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 8.0.h,
                                        bottom: 8.0.h,
                                      ),
                                      child: Text(
                                        "Sales Overview",
                                        style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Wrap(
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.appOxbloodColor,
                                              size: 33.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "sessions",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0),
                                                ),
                                                Text(
                                                  "780",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.appOxbloodColor,
                                              size: 33.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "sessions",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0),
                                                ),
                                                Text(
                                                  "780",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8.0.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Wrap(
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.appOxbloodColor,
                                              size: 33.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "sessions",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0),
                                                ),
                                                Text(
                                                  "780",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          children: [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: AppColors.appOxbloodColor,
                                              size: 33.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "sessions",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0),
                                                ),
                                                Text(
                                                  "780",
                                                  style: GoogleFonts.roboto(
                                                      color: Colors.black,
                                                      fontSize: 18.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
