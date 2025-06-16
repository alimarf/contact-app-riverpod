import '../entities/auth_entity.dart';

abstract class AuthRepository {
  Future<AuthEntity> signup({
    required String name,
    required String email,
    required String password,
  });

  Future<AuthEntity> login({
    required String email,
    required String password,
  });
} 