import 'package:dio/dio.dart';
import '../../../../core/network/dio_client.dart';
import '../models/contact_model.dart';

class ContactApiService {
  final Dio _dio;

  ContactApiService(DioClient dioClient) : _dio = dioClient.dio;

  Future<List<ContactModel>> getContacts() async {
    try {
      final response = await _dio.get('/contacts');
      return (response.data as List)
          .map((json) => ContactModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<ContactModel> getContact(String id) async {
    try {
      final response = await _dio.get('/contacts/$id');
      return ContactModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<ContactModel> createContact(ContactModel contact) async {
    try {
      final response = await _dio.post(
        '/contacts',
        data: contact.toJson(),
      );
      return ContactModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<ContactModel> updateContact(ContactModel contact) async {
    try {
      final response = await _dio.put(
        '/contacts/${contact.id}',
        data: contact.toJson(),
      );
      return ContactModel.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Future<void> deleteContact(String id) async {
    try {
      await _dio.delete('/contacts/$id');
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Exception _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return Exception('Connection timeout. Please try again.');
      case DioExceptionType.badResponse:
        return Exception(e.response?.data['message'] ?? 'An error occurred');
      case DioExceptionType.cancel:
        return Exception('Request was cancelled');
      default:
        return Exception('Network error occurred');
    }
  }
} 