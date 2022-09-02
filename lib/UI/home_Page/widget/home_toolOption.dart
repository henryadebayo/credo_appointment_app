import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appointment_dat.dart';

class ToolOptionItem extends StatelessWidget {
  const ToolOptionItem({
    Key? key,
    required this.index,
    required this.onClick,
  }) : super(key: key);

  final int index;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onClick();
          },
          child: Container(
            height: 50.0.h,
            width: 50.0.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0.r),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 3.0),
                      blurRadius: 0.9)
                ]),
            child: Center(
              child: SvgPicture.asset(
                appointmentToolOption[index].image,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8.0.h,
        ),
        Text(
          appointmentToolOption[index].itemLabel,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500, fontSize: 10.0.sp),
        )
      ],
    );
  }
}
