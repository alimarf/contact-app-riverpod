import '../../../../core/network/dio_client.dart';
import '../../domain/entities/contact_entity.dart';
import '../models/contact_model.dart';

class ContactService {
  final DioClient _dioClient;

  ContactService(this._dioClient);

  Future<List<ContactEntity>> getContacts() async {
    try {
      final response = await _dioClient.dio.get('/contacts');
      final data = response.data;
      if (data is Map && data['data'] is List) {
        return (data['data'] as List)
            .map((json) => ContactModel.fromJson(json).toEntity())
            .toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } catch (e) {
      throw Exception('Failed to fetch contacts: $e');
    }
  }

  Future<ContactEntity> createContact(ContactEntity contact) async {
    try {
      final response = await _dioClient.dio.post(
        '/contacts',
        data: {
          'name': contact.name,
          'phone': contact.phoneNumber,
          'email': contact.email,
          'address': contact.address,
        },
      );
      return ContactModel.fromJson(response.data).toEntity();
    } catch (e) {
      throw Exception('Failed to create contact: $e');
    }
  }

  Future<void> deleteContact(String id) async {
    try {
      await _dioClient.dio.delete('/contacts/$id');
    } catch (e) {
      throw Exception('Failed to delete contact: $e');
    }
  }

  Future<ContactEntity> updateContact(ContactEntity contact) async {
    try {
      final response = await _dioClient.dio.put(
        '/contacts/${contact.id}',
        data: {
          'name': contact.name,
          'phone': contact.phoneNumber,
        },
      );
      return ContactModel.fromJson(response.data).toEntity();
    } catch (e) {
      throw Exception('Failed to update contact: $e');
    }
  }
} 