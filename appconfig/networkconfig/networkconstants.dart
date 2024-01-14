import 'package:flutter/material.dart';

class ExceptionClass {
  static const int timeout = 45;

  static const int timerDurationMinutes = 5;

  static const int inactiveTimeoutInMinutes = 7;

  static const noInternet =
      "There was a problem connecting to the server, please check your internet and try again";

  static const errormessage =
      "We can not process this request at the time, please try again later";

  static const timeoutmessage = "Request Timed out, please try again";

  static const int timeoutCustomCode = 511;

  static const noServerConnection =
      "There was a problem connecting to the server, please try again later";

  static const String inactiveTimeoutText =
      "Your session expired, please login to continue";

  static const String validatedNewUser =
      "You have been validated previously, please proceed with your registration";

  static const String validatedExistingUser =
      "You have been validated previously, please enter your customer ID to proceed with your registration";
}
