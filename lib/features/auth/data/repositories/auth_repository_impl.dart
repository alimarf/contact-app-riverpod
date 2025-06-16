import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/auth_entity.dart';
import '../services/auth_api_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService apiService;

  AuthRepositoryImpl(this.apiService);

  @override
  Future<AuthEntity> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    final model = await apiService.signup(
      name: name,
      email: email,
      password: password,
    );
    return model.toEntity();
  }

  @override
  Future<AuthEntity> login({
    required String email,
    required String password,
  }) async {
    final model = await apiService.login(
      email: email,
      password: password,
    );
    return model.toEntity();
  }
} 