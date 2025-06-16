import 'package:dio/dio.dart';
import 'auth_model.dart';

class AuthApiService {
  final Dio dio;

  AuthApiService(this.dio);

  Future<AuthModel> login(String email, String password) async {
    final response = await dio.post('/auth/login', data: {
      'email': email,
      'password': password,
    });
    return AuthModel.fromJson(response.data);
  }

  Future<AuthModel> signup(String email, String password) async {
    final response = await dio.post('/auth/signup', data: {
      'email': email,
      'password': password,
    });
    return AuthModel.fromJson(response.data);
  }
} 