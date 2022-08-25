import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/const/app_colors.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
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
                                "Transactions",
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              "+Add new employee",
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                //fontSize: 20.0.sp
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, _) => Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0.h),
                          child: Container(
                            height: 70.0.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0.r),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0.0, 0.5),
                                    blurRadius: 0.5,
                                  ),
                                ]),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 25.0.r,
                              ),
                              title: Text(
                                "Jonathan Hope",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w800),
                              ),
                              subtitle: Text(
                                "Hairdresser Massager",
                                style: GoogleFonts.roboto(),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.appOxbloodColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
