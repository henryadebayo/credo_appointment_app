import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/const/app_colors.dart';
import '../../../utils/const/app_sizedBox.dart';
import '../../../utils/dimensions/dimension.dart';

class PaymentSummaryWidget extends StatelessWidget {
  const PaymentSummaryWidget({
    Key? key,
    required this.scaler,
  }) : super(key: key);

  final VeloxScaleUtil scaler;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.5),
                color: VeloxColors.restaurantTopButton,
              ),
              height: 31,
              width: 31,
              child: SvgPicture.asset(
                'assets/user.svg',
                height: 5,
                width: 5,
                color: VeloxColors.white,
                fit: BoxFit.scaleDown,
              ),
            ),
            const VeloxSizedBox(
              width: 2,
            ),
            Column(
              children: [
                const Text('Elon Hush'),
                Text(
                  '1 Hour Ago',
                  style: TextStyle(fontSize: scaler.fontSizer.sp(40)),
                ),
              ],
            )
          ],
        ),
        const VeloxSizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('HairCut'),
            Text(
              'Total: ₦80',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: scaler.fontSizer.sp(65),
                  color: VeloxColors.restaurantTopButton),
            ),
          ],
        )
      ],
    );
  }
}
