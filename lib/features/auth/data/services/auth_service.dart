import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static const String _tokenKey = 'auth_token';
  final SharedPreferences _prefs;

  AuthService(this._prefs);

  Future<void> saveToken(String token) async {
    await _prefs.setString(_tokenKey, token);
    print('AuthService: Saved token: $token');
  }

  String? getToken() {
    final token = _prefs.getString(_tokenKey);
    print('AuthService: getToken() -> $token');
    return token;
  }

  Future<void> removeToken() async {
    await _prefs.remove(_tokenKey);
  }

  bool isAuthenticated() {
    return getToken() != null;
  }
} 