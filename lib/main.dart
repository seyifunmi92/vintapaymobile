import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vintapay/core/appTheme/themehelper.dart';
import 'package:vintapay/view/presentation/splashscreens/splashScreen1.dart';
// ignore_for_file: library_private_types_in_public_api

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(0, 149, 109, 109),
      statusBarIconBrightness: Brightness.dark));
  HttpOverrides.global = MyHttpOverrides();
  runApp(const VintapayLaunch());
}

class VintapayLaunch extends StatefulWidget {
  static _VintapayLaunchState of(BuildContext context) =>
      context.findAncestorStateOfType<_VintapayLaunchState>()!;

  const VintapayLaunch({super.key});

  @override
  State<VintapayLaunch> createState() => _VintapayLaunchState();
}

class _VintapayLaunchState extends State<VintapayLaunch> {
  ThemeMode appCurrentTheme = ThemeMode.system;
  static final navKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _VintapayLaunchState.navKey,
      themeMode: appCurrentTheme,
      darkTheme: AppTheme.darkMode,
      theme: AppTheme.lightMode,
      home: const SplashScreenInitial(),
    );
  }

  // ignore: unused_element
  updateTheme(ThemeMode theme) {
    setState(() {
      appCurrentTheme = theme;
    });
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
