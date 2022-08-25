import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/const/app_colors.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                child: const Icon(
                  Icons.wallet_membership_rounded,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: AppColors.appOxbloodColor,
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
              ),
              SizedBox(
                width: 8.0.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Discount Applied",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      //fontSize: 20.0.sp
                    ),
                  ),
                  Text(
                    "18:33",
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "#458",
                style: GoogleFonts.poppins(
                  color: AppColors.appOxbloodColor,
                  fontWeight: FontWeight.w800,
                  //fontSize: 20.0.sp
                ),
              ),
              Text(
                "Thurs, 18 OCT",
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
    );
  }
}
