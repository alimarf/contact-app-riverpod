import 'package:dartz/dartz.dart';
import '../../../core/error/failures.dart';
import 'auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> login(String email, String password);
  Future<Either<Failure, AuthEntity>> signup(String email, String password);
  Future<Either<Failure, void>> logout();
} 