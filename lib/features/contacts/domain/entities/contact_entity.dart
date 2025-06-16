import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_entity.freezed.dart';
part 'contact_entity.g.dart';

@freezed
class ContactEntity with _$ContactEntity {
  const factory ContactEntity({
    required String id,
    required String name,
    required String phoneNumber,
    String? email,
    String? address,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ContactEntity;

  factory ContactEntity.fromJson(Map<String, dynamic> json) =>
      _$ContactEntityFromJson(json);
} 