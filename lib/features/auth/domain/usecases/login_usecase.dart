import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../auth_repository.dart';
import '../auth_entity.dart';


class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<Either<Failure, AuthEntity>> call(String email, String password) {
    return repository.login(email, password);
  }
} 