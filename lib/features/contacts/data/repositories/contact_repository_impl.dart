import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/contact_entity.dart';
import '../../domain/repositories/contact_repository.dart';
import '../models/contact_model.dart';
import '../services/contact_api_service.dart';

class ContactRepositoryImpl implements ContactRepository {
  final ContactApiService _apiService;

  ContactRepositoryImpl(this._apiService);

  @override
  Future<Either<Failure, List<ContactEntity>>> getContacts() async {
    try {
      final contacts = await _apiService.getContacts();
      return Right(contacts.map((model) => model.toEntity()).toList());
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
  @override
  Future<Either<Failure, ContactEntity>> getContact(String id) async {
    try {
      final contact = await _apiService.getContact(id);
      return Right(contact.toEntity());
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
  @override
  Future<Either<Failure, ContactEntity>> createContact(ContactEntity contact) async {
    try {
      final contactModel = ContactModel.fromEntity(contact);
      final createdContact = await _apiService.createContact(contactModel);
      return Right(createdContact.toEntity());
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ContactEntity>> updateContact(ContactEntity contact) async {
    try {
      final contactModel = ContactModel.fromEntity(contact);
      final updatedContact = await _apiService.updateContact(contactModel);
      return Right(updatedContact.toEntity());
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteContact(String id) async {
    try {
      await _apiService.deleteContact(id);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
} 