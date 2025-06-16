import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> signup({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthEntity>> login({
    required String email,
    required String password,
  });
} 