import 'package:flutter/cupertino.dart';
import 'package:vintapay/core/layoutbuilder/responsiveness.dart';
// ignore_for_file: camel_case_types

// ignore: must_be_immutable
class vText extends StatelessWidget {
  String value;
  TextStyle? textStyle;
  double? fontSize;
  FontWeight? fontWeight;
  String? fontFamily;
  double? letterSpacing;
  bool? softWrap;
  TextOverflow? overflow;
  Color? fontColor;

  vText({
    super.key,
    required this.value,
    this.textStyle,
    this.fontSize,
    this.fontWeight,
    this.fontFamily = "poppins",
    this.letterSpacing,
    this.softWrap,
    this.overflow,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize ?? 10.fSize,
            fontWeight: fontWeight ?? FontWeight.normal,
            fontFamily: fontFamily,
            letterSpacing: letterSpacing,
            color: fontColor,
          ),
      softWrap: softWrap,
      overflow: overflow,
    );
  }
}
