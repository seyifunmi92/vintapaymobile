import 'package:flutter/cupertino.dart';
import 'package:vintapay/core/layoutbuilder/responsiveness.dart';

/// returns responsive sizedbox height
spaceH(double height) {
  return SizedBox(
    height: height.h,
  );
}

/// returns responsive sizedbox width
spaceW(double weight) {
  return SizedBox(
    height: weight.w,
  );
}

/// returns responsive sizedbox small
customSpacingSmall(double h) {
  return SizedBox(
    height: 20.h,
  );
}

/// returns responsive sizedbox height mid
customSpacingMid(double h) {
  return SizedBox(
    height: 50.h,
  );
}
/// returns responsive sizedbox large
customSpacingLarge(double h) {
  return SizedBox(
    height: 100.h,
  );
}
