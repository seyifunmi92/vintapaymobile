import 'dart:io';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:vintapay/core/localization/currencies.dart';

String formatDate(DateTime date) {
  var formattedDate = DateFormat("dd MMMM, yyyy").format(date);
  return formattedDate;
}

String formatDateWithTime(DateTime date) {
  var formattedDate = DateFormat("dd MMMM, yyyy, hh:mm aa").format(date);
  return formattedDate;
}

String currencyFormat(double amount) {
  final formattedData = NumberFormat("#,###,000.00");
  var formattedAmount = formattedData.format(amount);
  return formattedAmount;
}

String numberFormat(double amount) {
  final formattedData = NumberFormat("#,###,###");
  var formattedAmount = formattedData.format(amount).replaceAll("", '');
  return formattedAmount;
}

extension NumberFormatWithComma on double {
  String formatWithComma() {
    final formattedData = NumberFormat("#,###,000.00");
    return formattedData.format(this).replaceAll("", '');
  }
}

extension NumberFormatext on double {
  String toPrice() {
    final formattedData = NumberFormat("#,###,000.00");
    return formattedData.format(this);
  }
}

extension NumberFormatextension on String {
  String formatPrice() {
    final formattedData = NumberFormat("#,###,000.00");
    return formattedData.format(this);
  }
}

extension NumberFormatextension2 on dynamic {
  String formatPrice() {
    final formattedData = NumberFormat("#,###,000.00");
    return formattedData.format(this);
  }
}

extension DateStringExtension on String {
  DateTime toDateFromString() {
    return DateTime.parse(this);
  }
}

extension Obscure on String {
  String hash() {
    return replaceAll(RegExp(r"."), "*");
  }
}

extension FormattedDate on DateTime {
  String formatDate() {
    return DateFormat("dd MMMM, yyyy").format(this);
  }
}

extension FormattedDateWithTime on DateTime {
  String formatDateWithTime() {
    return DateFormat("dd MMMM, yyyy, hh:mm aa").format(this);
  }
}

/// set timer
callWidgetOnTimer({int? seconds, dynamic child}) {
  Timer(Duration(seconds: seconds ?? 3), () {
    child;
  });
}

currency(context, {String symbol = Currency.NAIRA}) {
  var currency =
      NumberFormat.simpleCurrency(locale: Platform.localeName, name: symbol);
  return currency;
}

RegExp get regexInputField => RegExp(r'^[0-9]+(\.[0-9]{0,2})?$');

///input formatter while typing
class ThousandsFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text;
    if (newText.isEmpty) {
      return newValue;
    }
    int selectionIndex = newValue.selection.end;
    final String newTextFormatted = NumberFormat("#,###,###")
        .format(double.tryParse(newText.replaceAll(",", "")));
    if (newText == newTextFormatted) {
      return newValue;
    }
    selectionIndex += -(newText.length - newTextFormatted.length);
    return TextEditingValue(
      text: newTextFormatted,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}

hideKeys(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}
