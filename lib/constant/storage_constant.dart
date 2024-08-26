import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static Future<String> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('user_id') ?? '';
  }

  static Future<void> setUserId(String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('user_id', value);
  }
}
