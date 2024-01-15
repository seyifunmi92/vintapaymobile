import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  late AnimationController _animation;

  AnimationController get animation => _animation;

  late final Animation<Offset> _offset;

  Animation<Offset> get offset => _offset;

  initializeAnimation({required TickerProvider x}) {
    _animation = AnimationController(vsync: x, duration: Duration(seconds: 8));
    animation.forward();
    animation.addListener(() {
      animation.status == AnimationStatus.completed ? animation.stop() : null;
    });
    updateOffset();
  }

  updateOffset() {
    _offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 1.5))
        .animate(ReverseAnimation(_animation));
  }
}
