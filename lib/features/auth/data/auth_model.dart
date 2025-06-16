import '../domain/auth_entity.dart';

class AuthModel extends AuthEntity {
  AuthModel({required String token, required String userId}) : super(token: token, userId: userId);

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      token: json['token'],
      userId: json['userId'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'userId': userId,
    };
  }
} 