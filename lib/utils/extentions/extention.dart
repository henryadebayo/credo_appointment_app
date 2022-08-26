import 'package:flutter/widgets.dart';

import '../dimensions/dimension.dart';

extension WidgetExtensions on Widget {
  List<Widget> operator *(int count) {
    return List.generate(count, (_) => this);
  }
}

extension ScaleExtension on BuildContext {
  VeloxScaleUtil get scaler {
    return VeloxScaleUtil(this);
  }
}
