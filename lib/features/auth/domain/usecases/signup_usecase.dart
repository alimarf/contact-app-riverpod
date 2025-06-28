import 'package:dartz/dartz.dart';
import '../repositories/auth_repository.dart';
import '../entities/auth_entity.dart';
import '../../../../core/error/failures.dart';

class SignupUseCase {
  final AuthRepository repository;

  SignupUseCase(this.repository);

  Future<Either<Failure, AuthEntity>> call({
    required String name,
    required String email,
    required String password,
  }) {
    return repository.signup(name: name, email: email, password: password);
  }
}
