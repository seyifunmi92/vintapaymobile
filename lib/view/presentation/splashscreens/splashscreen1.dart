import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../utils/switchcase/switch.dart';
import 'package:vintapay/providers/onboardingprovider.dart';
import 'package:vintapay/view/widgets/animatedwidgets/flipimage.dart';

class SplashScreenInitial extends StatefulWidget {
  const SplashScreenInitial({super.key});

  @override
  State<SplashScreenInitial> createState() => _SplashScreenInitialState();
}

class _SplashScreenInitialState extends State<SplashScreenInitial>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    context.read<OnboardingProvider>().initializeAnimation(x: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var currentTheme = MediaQuery.of(context).platformBrightness.name;
    return Scaffold(
      body: Center(
          child: Consumer<OnboardingProvider>(builder: (context, x, child) {
        return AnimateImageFlip(
            image: getImageByTheme(currentTheme), isHorizontalFlip: false);
      })),
    );
  }
}
