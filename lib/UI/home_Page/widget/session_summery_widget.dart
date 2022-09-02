import 'package:flutter/cupertino.dart';

import '../../../utils/const/app_colors.dart';
import '../../../utils/dimensions/dimension.dart';

class SessionSummaryWidget extends StatelessWidget {
  const SessionSummaryWidget({
    Key? key,
    required this.scaler,
    required this.barColor,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final Color barColor;
  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: VeloxColors.white),
      height: scaler.sizer.setHeight(16),
      width: scaler.sizer.setWidth(55),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(mainText,
                  style: TextStyle(
                      color: VeloxColors.restaurantTopButton,
                      fontSize: scaler.fontSizer.sp(80),
                      fontWeight: FontWeight.w600)),
              Container(
                  color: barColor,
                  height: scaler.sizer.setHeight(3),
                  width: scaler.sizer.setWidth(1.5))
            ]),
            Text(subText,
                style: TextStyle(
                    color: VeloxColors.restaurantTopButton,
                    fontSize: scaler.fontSizer.sp(50),
                    fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }
}
