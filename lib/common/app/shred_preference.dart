import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShredPreference {
  String store = "";
  String userId = "userId";
  String isLogin = "isLogin";

  static checkPrefKey(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }

  static Future<String?> getPrefStringValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static setPrefStringValue(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  static getPrefBoolValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  static setPrefBoolValue(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(key, value);
  }

  static getPrefIntValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  static setPrefIntValue(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
  }

  static removePrefValue(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}

log(String message) {
  if (kDebugMode) {
    print(message);
  }
}

class Singleton {
  static String? token;
  static final Singleton _singleton = Singleton._internal();

  Singleton._internal();

  factory Singleton() {
    return _singleton;
  }
}
