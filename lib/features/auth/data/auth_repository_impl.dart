import 'package:dartz/dartz.dart';
import '../domain/auth_repository.dart';
import '../domain/auth_entity.dart';
import 'auth_api_service.dart';
import '../../../core/error/failures.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService apiService;

  AuthRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, AuthEntity>> login(String email, String password) async {
    try {
      final authModel = await apiService.login(email, password);
      return Right(authModel);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> signup(String email, String password) async {
    try {
      final authModel = await apiService.signup(email, password);
      return Right(authModel);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      // Implement logout logic here
      return Right(null);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
} 