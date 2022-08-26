import 'package:flutter/widgets.dart' show TextStyle, FontWeight;

import 'app_colors.dart';

class VeloxFonts {
  ///
  /// FONT-FAMILY MARK PRO
  ///
  static const markPro = "MarkPro";
}

class VeloxTextStyle {
  static const TextStyle light = TextStyle(
    fontFamily: VeloxFonts.markPro,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle medium = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: VeloxFonts.markPro,
  );

  static const TextStyle bold = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: VeloxFonts.markPro,
    color: VeloxColors.black,
  );

  static final TextStyle black = TextStyle(
    fontWeight: FontWeight.w900,
    fontFamily: VeloxFonts.markPro,
  );
  static final TextStyle notePadWhite = TextStyle(
    fontWeight: FontWeight.w700,
    fontFamily: VeloxFonts.markPro,
    fontSize: 12,
    color: VeloxColors.white,
  );
  static final TextStyle notePadSmallWhite = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: VeloxFonts.markPro,
    fontSize: 10,
    color: VeloxColors.white,
  );
}
