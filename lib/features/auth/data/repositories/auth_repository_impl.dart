import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../shared/helper/error_messages.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/auth_entity.dart';
import '../services/auth_api_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService apiService;

  AuthRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, AuthEntity>> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final model = await apiService.signup(
        name: name,
        email: email,
        password: password,
      );
      return Right(model.toEntity());
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final model = await apiService.login(
        email: email,
        password: password,
      );
      return Right(model.toEntity());
    } catch (e) {
      final message = e.toString().replaceAll('Exception: ', '');
      return Left(ServerFailure(message: message));
    }
  }
}