import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/const/app_colors.dart';
import '../../../utils/const/app_sizedBox.dart';
import '../../../utils/const/images.dart';
import '../../../utils/dimensions/dimension.dart';

class OverviewWidget extends StatelessWidget {
  const OverviewWidget({
    Key? key,
    required this.scaler,
    required this.mainTitle,
    required this.firstItemTitle,
    required this.firstItemSubTitle,
    required this.firstItemIcon,
  }) : super(key: key);

  final VeloxScaleUtil scaler;
  final String mainTitle;
  final String firstItemTitle;
  final String firstItemSubTitle;
  final String firstItemIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: scaler.sizer.setHeight(22),
      decoration: BoxDecoration(
          color: VeloxColors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                child: Text(
              mainTitle,
              style: const TextStyle(fontWeight: FontWeight.w700),
            )),
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      firstItemIcon,
                      height: scaler.sizer.setHeight(4),
                      width: scaler.sizer.setWidth(2),
                      fit: BoxFit.scaleDown,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(firstItemTitle),
                        Text(
                          firstItemSubTitle,
                          style: TextStyle(
                              color: VeloxColors.restaurantTopButton,
                              fontWeight: FontWeight.bold,
                              fontSize: scaler.fontSizer.sp(60)),
                        )
                      ],
                    ),
                    const VeloxSizedBox(
                      width: 2,
                    ),
                    SvgPicture.asset(
                      VeloxSvgs.reportsRevenueIcon,
                      height: scaler.sizer.setHeight(4),
                      width: scaler.sizer.setWidth(2),
                      fit: BoxFit.scaleDown,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Revenue'),
                        Text(
                          ' ₦11530',
                          style: TextStyle(
                              color: VeloxColors.restaurantTopButton,
                              fontWeight: FontWeight.bold,
                              fontSize: scaler.fontSizer.sp(60)),
                        )
                      ],
                    ),
                  ]),
            ),
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      VeloxSvgs.reportsNairaIcon,
                      height: scaler.sizer.setHeight(4),
                      width: scaler.sizer.setWidth(2),
                      fit: BoxFit.scaleDown,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Cost'),
                        Text(
                          '₦11530',
                          style: TextStyle(
                              color: VeloxColors.restaurantTopButton,
                              fontWeight: FontWeight.bold,
                              fontSize: scaler.fontSizer.sp(60)),
                        )
                      ],
                    ),
                    const VeloxSizedBox(width: 8),
                    SvgPicture.asset(
                      VeloxSvgs.reportsProfit,
                      height: scaler.sizer.setHeight(4),
                      width: scaler.sizer.setWidth(2),
                      fit: BoxFit.scaleDown,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Profit'),
                        Text(
                          ' ₦11530',
                          style: TextStyle(
                              color: VeloxColors.restaurantTopButton,
                              fontWeight: FontWeight.bold,
                              fontSize: scaler.fontSizer.sp(60)),
                        )
                      ],
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
