import 'package:dio/dio.dart';
import '../models/auth_model.dart';

class AuthApiService {
  final Dio dio;

  AuthApiService({
    required this.dio,
  });

  Future<AuthModel> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        '/auth/signup',
        data: {
          'name': name,
          'email': email,
          'password': password,
        },
      );
      
      if (response.data == null) {
        throw Exception('No data received from server');
      }
      if (response.data['success'] == false) {
        throw Exception(response.data['message'] ?? 'Signup failed');
      }
      return AuthModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response?.data['message'] ?? 'Signup failed');
      }
      throw Exception('Signup failed: ${e.message}');
    } catch (e) {
      throw Exception('Signup failed: $e');
    }
  }

  Future<AuthModel> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      
      if (response.data == null) {
        throw Exception('No data received from server');
      }
      if (response.data['success'] == false) {
        throw Exception(response.data['message'] ?? 'Login failed');
      }
      return AuthModel.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data != null) {
        throw Exception(e.response?.data['message'] ?? 'Login failed');
      }
      throw Exception('Login failed: ${e.message}');
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }
} 