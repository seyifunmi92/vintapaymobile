import 'dart:convert';
import 'package:nb_utils/nb_utils.dart';
import 'package:vintapay/utils/cachehandler/cachekey.dart';
import 'package:shared_preferences/shared_preferences.dart';

CacheDataHandler cacheDataHandler = CacheDataHandler();

class CacheDataHandler {
  static late SharedPreferences sharedPreferences;

  /// initialize shared preference
  Future<SharedPreferences> _initializeCache() async {
    return await SharedPreferences.getInstance();
  }

  static set appFirstTimer(bool value) =>
      sharedPreferences.setBool(CacheData.isFirstTime, value);

  static bool get doesTokenExist =>
      sharedPreferences.getBool(CacheData.bearerToken) ?? false;

  bool get isFirstTime =>
      sharedPreferences.getBool(CacheData.isFirstTime) ?? true;

  /// get string value from cache
  Future<String?> getStringValue({required String key}) async {
    var x = await _initializeCache();

    return x.getString(key);
  }

  /// get int value from cache
  Future<int?> getIntValue({required String key}) async {
    var x = await _initializeCache();

    return x.getInt(key);
  }

  /// get bool value from cache
  Future<bool> isFirstTimeinApp() async {
    var x = await _initializeCache();

    return x.getBool(CacheData.isFirstTime) ?? true;
  }

  /// get bool value from cache
  Future<bool?> getBoolValue({required String key}) async {
    var x = await _initializeCache();

    return x.getBool(key);
  }

  /// get List<String> value from cache
  Future<List<String>?> getListValue({required String key}) async {
    var x = await _initializeCache();

    return x.getStringList(key);
  }

  /// get string data
  String? getString({required String key}) => sharedPreferences.getString(key);

  ///get bool data
  bool? getBool({required String key}) => sharedPreferences.getBool(key);

  ///get Int data
  int? getInt({required String key}) => sharedPreferences.getInt(key);

  /// save value in any data type
  setValue({required String key, required value}) async {
    sharedPreferences = await _initializeCache();
    if (value is String) {
      sharedPreferences.setString(key, value);
      return;
    }

    if (value is int) {
      sharedPreferences.setInt(key, value);
      return;
    }

    if (value is double) {
      sharedPreferences.setDouble(key, value);
      return;
    }

    if (value is bool) {
      sharedPreferences.setBool(key, value);
      return;
    }

    if (value is Map) {
      sharedPreferences.setString(key, jsonEncode(value));
      return;
    }

    if (value is List<String>) {
      sharedPreferences.setString(key, jsonEncode(value));
      return;
    }
  }

  ///clear all existing cache data
  clearAllData() async {
    var x = await _initializeCache();
    x.clear();
  }

  clearData({required String key}) async {
    var x = await _initializeCache();
    x.remove(key);
  }
}
