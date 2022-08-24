import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/const/app_colors.dart';

class HomeSmallWidget extends StatelessWidget {
  String label;
  IconData icon;
  HomeSmallWidget({
    required this.label,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.0.h,
          width: 50.0.w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0.r),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, offset: Offset(0, 3.0), blurRadius: 0.9)
              ]),
          child: Center(
            child: Icon(
              icon,
              color: AppColors.appOxbloodColor,
            ),
            // "Schedule"
          ),
        ),
        SizedBox(
          height: 8.0.h,
        ),
        Text(
          label,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 10.0.sp),
        )
      ],
    );
  }
}
