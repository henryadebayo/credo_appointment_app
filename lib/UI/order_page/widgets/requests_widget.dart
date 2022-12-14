import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/const/app_colors.dart';

class RequestWidget extends StatelessWidget {
  const RequestWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  color: AppColors.appOxbloodColor,
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 8.0.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Elon Hosh",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      //fontSize: 20.0.sp
                    ),
                  ),
                  Text(
                    "1 hour ago",
                    style: GoogleFonts.poppins(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w500,
                      //fontSize: 20.0.sp
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Body Massage",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  //fontSize: 20.0.sp
                ),
              ),
              Text(
                "Wave Haircut",
                style: GoogleFonts.poppins(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500,
                  //fontSize: 20.0.sp
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 30.0.h,
                width: 40.0.w,
                color: AppColors.appGreenColor,
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 8.0.w,
              ),
              Container(
                height: 30.0.h,
                width: 40.0.w,
                color: AppColors.appRedColor,
                child: const Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
