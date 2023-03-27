import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReliposTextStyles {
  static TextStyle getTextStyle(BuildContext context, FontSize fontSize,
      {FontWeight? fontWeight, Color? color}) {
    return TextStyle(
        fontSize: ReliposFontSize.getFontSize(context, fontSize),
        fontWeight: fontWeight,
        color: color);
  }
}

class ReliposFontSize {
  static double getFontSize(BuildContext context, FontSize fontSize) {
    double height = context.height;
    switch (fontSize) {
      case FontSize.H1FontSize:
        return height > 640
            ? (height >= 1024 ? 40 : 32)
            : height < 450
                ? 17
                : 22;
      case FontSize.H2FontSize:
        return height > 640
            ? (height >= 1024 ? 34 : 24)
            : height < 450
                ? 15
                : 18;
      case FontSize.H3FontSize:
        return height > 640
            ? (height >= 1024 ? 28 : 18)
            : height < 450
                ? 13
                : 15;
      case FontSize.H4FontSize:
        return height > 640
            ? (height >= 1024 ? 24 : 16)
            : height < 450
                ? 10
                : 12;
      case FontSize.H5FontSize:
        return height > 640
            ? (height >= 1024 ? 20 : 14)
            : height < 450
                ? 7
                : 10;
      default:
        return 0.0;
    }
  }
}

enum FontSize {
  H1FontSize,
  H2FontSize,
  H3FontSize,
  H4FontSize,
  H5FontSize,
}

// export const H1_FONT_SIZE = height > 640?(height >= 1024?40:32) : height < 450? 17 : 22 ;
// export const H2_FONT_SIZE = height > 640?(height >= 1024?34:24) : height < 450? 15 : 18 ;
// export const H3_FONT_SIZE = height > 640?(height >= 1024?28:18) : height < 450? 13 : 15 ;
// export const H4_FONT_SIZE = height > 640?(height >= 1024?24:16) : height < 450? 10 : 12 ;
// export const H5_FONT_SIZE = height > 640?(height >= 1024?20:14) : height < 450? 7 : 10 ;
