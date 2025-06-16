import '../../domain/entities/auth_entity.dart';

class AuthModel {
  final String id;
  final String name;
  final String email;
  final String token;
  final String message;

  AuthModel({
    required this.id,
    required this.name,
    required this.email,
    required this.token,
    required this.message,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    // Handle the response data structure
    final data = json['data'] as Map<String, dynamic>? ?? {};
    final user = data['user'] as Map<String, dynamic>? ?? {};
    
    return AuthModel(
      id: user['id']?.toString() ?? '',
      name: user['name']?.toString() ?? '',
      email: user['email']?.toString() ?? '',
      token: data['token']?.toString() ?? '',
      message: json['message']?.toString() ?? '',
    );
  }

  AuthEntity toEntity() => AuthEntity(
        id: id,
        name: name,
        email: email,
        token: token,
        message: message,
      );
} 