import 'package:flutter/material.dart';

class HttpStatusCodes {
  static const int successCode = 200;
  static const int unauthorized = 401;
  static const int internalServerError = 500;
  static const int severUnreachable = 503;
  static const int notFound = 404;
  static const int badRequest = 400;
}

class ApiResponseCodes {
  static const successCode = "00";
  static const unauthorized = "01";
  static const internalSeverError = "05";
  static const verificationComplete = "03";
}
