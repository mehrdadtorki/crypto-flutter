import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  AppStorage._();

  static Future<SharedPreferences> get _prefs async =>
  SharedPreferences.getInstance();

  static Future<void> saveSession(String token) async {
    final prefs = await _prefs;
    await prefs.setString('session_token', token);
  }

  static Future<String?> getSession() async {
    final prefs = await _prefs;
    return prefs.getString('session_token');
  }

  static Future<void> clearSession() async {
    final prefs = await _prefs;
    await prefs.remove('session_token');
  }
}