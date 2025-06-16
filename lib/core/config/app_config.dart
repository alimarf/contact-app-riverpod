import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get baseUrl => dotenv.env['BASE_URL'] ?? 'http://localhost:3000';
  static String get apiVersion => dotenv.env['API_VERSION'] ?? 'v1';
  
  static Future<void> init() async {
    await dotenv.load(fileName: '.env');
  }
} 