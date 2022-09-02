import 'package:flutter/cupertino.dart';

import '../../../utils/const/app_colors.dart';
import '../../../utils/dimensions/dimension.dart';

class TotalRequestsWidget extends StatelessWidget {
  const TotalRequestsWidget({
    Key? key,
    required this.scaler,
  }) : super(key: key);

  final VeloxScaleUtil scaler;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: VeloxColors.restaurantTopButton),
      height: scaler.sizer.setHeight(16),
      width: scaler.sizer.setWidth(55),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('247',
                style: TextStyle(
                    color: VeloxColors.white,
                    fontSize: scaler.fontSizer.sp(80),
                    fontWeight: FontWeight.w600)),
            Text('Total requests',
                style: TextStyle(
                    color: VeloxColors.white,
                    fontSize: scaler.fontSizer.sp(50),
                    fontWeight: FontWeight.w300))
          ],
        ),
      ),
    );
  }
}
