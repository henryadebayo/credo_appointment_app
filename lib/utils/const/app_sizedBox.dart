import 'package:flutter/widgets.dart';

import '../dimensions/dimension.dart';

class VeloxSizedBox extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;

  const VeloxSizedBox({this.height = 0, this.width = 0, this.child});

  @override
  Widget build(BuildContext context) {
    final sizer = VeloxScaleUtil(context).sizer;
    return SizedBox(
      height: sizer.setHeight(height),
      width: sizer.setWidth(width),
      child: child,
    );
  }
}
