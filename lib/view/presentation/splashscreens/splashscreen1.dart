import 'package:flutter/material.dart';
import '../../../utils/switchcase/switch.dart';
import 'package:vintapay/core/layoutbuilder/responsiveness.dart';
import 'package:vintapay/view/widgets/imageloader/imageloader.dart';

class SplashScreenInitial extends StatefulWidget {
  const SplashScreenInitial({super.key});

  @override
  State<SplashScreenInitial> createState() => _SplashScreenInitialState();
}

class _SplashScreenInitialState extends State<SplashScreenInitial> {
  @override
  Widget build(BuildContext context) {
    var currentTheme = MediaQuery.of(context).platformBrightness.name;
    return Scaffold(
      body: Center(
        child: ImageLoader(
          imagePath: getImageByTheme(currentTheme),
          imageHeight: 100.adaptSize,
        ),
      ),
    );
  }
}
