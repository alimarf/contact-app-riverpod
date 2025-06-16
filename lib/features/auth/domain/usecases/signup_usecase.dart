import 'package:dartz/dartz.dart';
import '../auth_repository.dart';
import '../auth_entity.dart';
import '../../../../core/error/failures.dart';

class SignupUseCase {
  final AuthRepository repository;

  SignupUseCase(this.repository);

  Future<Either<Failure, AuthEntity>> call(String email, String password) {
    return repository.signup(email, password);
  }
} 