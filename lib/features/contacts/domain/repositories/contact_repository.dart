import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/contact_entity.dart';

abstract class ContactRepository {
  Future<Either<Failure, List<ContactEntity>>> getContacts();
  Future<Either<Failure, ContactEntity>> getContact(String id);
  Future<Either<Failure, ContactEntity>> createContact(ContactEntity contact);
  Future<Either<Failure, ContactEntity>> updateContact(ContactEntity contact);
  Future<Either<Failure, void>> deleteContact(String id);
} 