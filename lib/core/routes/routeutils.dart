import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:page_transition/page_transition.dart';

finishContext(BuildContext context) {
  if (Navigator.of(context).canPop()) {
    finish(context);
  }
}

closeAction(context) {
  Navigator.pop(context);
}

nextScreen(context, pageName,
    {isPageTransition = false,
    Widget? child,
    PageTransitionType? transitionType,
    Alignment? align,
    Duration? duration,
    bool? fullScreenDialog,
    bool? maintanStateData}) {
  Navigator.push(
      context,
      isPageTransition
          ? PageTransition(
              child: child!,
              type: transitionType!,
              alignment: align,
              duration: const Duration(microseconds: 200),
              fullscreenDialog: fullScreenDialog ?? false,
              maintainStateData: maintanStateData ?? false)
          : MaterialPageRoute(builder: (context) => pageName));
}

nextScreenPop(context, pageName) {
  Navigator.push(
      context,
      MaterialPageRoute(
          fullscreenDialog: true, builder: (context) => pageName));
}

nextScreenOtherClose(context, pageName,
    {isPageTransition = false,
    Widget? child,
    PageTransitionType? transitionType,
    Alignment? align,
    Duration? duration,
    bool? fullScreenDialog,
    bool? maintanStateData}) {
  Navigator.pushAndRemoveUntil(
      context,
      isPageTransition
          ? PageTransition(
              child: child!,
              type: transitionType!,
              alignment: align,
              duration: const Duration(microseconds: 200),
              fullscreenDialog: fullScreenDialog ?? false,
              maintainStateData: maintanStateData ?? false)
          : MaterialPageRoute(builder: (context) => pageName),
      (route) => false);
}

nextScreenReplace(context, pageName, {isPageTransition = false}) {
  finishContext(context);
  nextScreen(context, pageName, isPageTransition: isPageTransition);
}

nextTransition(context, bool? maintainState, Duration sec, pageName) {
  Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        maintainState: maintainState! ? true : false,
        opaque: true,
        pageBuilder: (context, context2, context3) => pageName,
        transitionDuration: sec,
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ));
}

pushAndRemoveUntil(context, pageName) {
  Navigator.pushAndRemoveUntil(context, ModalRoute.withName(pageName));
}
