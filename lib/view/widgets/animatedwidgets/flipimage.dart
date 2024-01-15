import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../imageloader/imageloader.dart';
import 'package:vintapay/core/layoutbuilder/responsiveness.dart';

// ignore: must_be_immutable
class AnimateImageFlip extends StatelessWidget {
  String image;
  double? imageSize;
  bool isHorizontalFlip;
  int? duration;
  AnimateImageFlip(
      {super.key,
      required this.image,
      this.imageSize,
      required this.isHorizontalFlip,
      this.duration});

  @override
  Widget build(BuildContext context) {
    return AnimationConfigurationClass.synchronized(
      duration: Duration(seconds: duration ?? 10),
      child: FlipAnimationWidget(
          flipAxis: isHorizontalFlip ? FlipAxisClass.x : FlipAxisClass.y,
          child: ImageLoader(
            imagePath: image,
            imageHeight: imageSize ?? 110.adaptSize,
          )),
    );
  }
}
