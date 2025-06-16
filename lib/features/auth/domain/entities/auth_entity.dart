import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';
part 'auth_entity.g.dart';

@freezed
class AuthEntity with _$AuthEntity {
  const factory AuthEntity({
    required String id,
    required String name,
    required String email,
    required String token,
    required String message,
  }) = _AuthEntity;

  factory AuthEntity.fromJson(Map<String, dynamic> json) => _$AuthEntityFromJson(json);
} 