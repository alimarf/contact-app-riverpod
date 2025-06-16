import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/contact_entity.dart';
import '../repositories/contact_repository.dart';

class CreateContactUseCase {
  final ContactRepository repository;

  CreateContactUseCase(this.repository);

  Future<Either<Failure, ContactEntity>> call(ContactEntity contact) async {
    return await repository.createContact(contact);
  }
} 