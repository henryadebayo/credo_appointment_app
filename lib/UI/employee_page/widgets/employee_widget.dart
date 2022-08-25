import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/const/app_colors.dart';

class EmployeeWidget extends StatelessWidget {
  const EmployeeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            style: GoogleFonts.roboto(fontWeight: FontWeight.w800),
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
    );
  }
}
