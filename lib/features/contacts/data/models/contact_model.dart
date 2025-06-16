import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/contact_entity.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
class ContactModel with _$ContactModel {
  const factory ContactModel({
    required String id,
    required String name,
    required String phoneNumber,
    String? email,
    String? address,
    String? notes,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ContactModel;

  // Custom fromJson to handle nulls and backend keys
  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      id: json['_id']?.toString() ?? json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      phoneNumber: json['phone']?.toString() ?? json['phoneNumber']?.toString() ?? '',
      email: json['email']?.toString(),
      address: json['address']?.toString(),
      notes: json['notes']?.toString(),
      createdAt: DateTime.tryParse(json['createdAt']?.toString() ?? '') ?? DateTime.now(),
      updatedAt: DateTime.tryParse(json['updatedAt']?.toString() ?? '') ?? DateTime.now(),
    );
  }

  factory ContactModel.fromEntity(ContactEntity entity) => ContactModel(
        id: entity.id,
        name: entity.name,
        phoneNumber: entity.phoneNumber,
        email: entity.email,
        address: entity.address,
        notes: entity.notes,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
      );
}

extension ContactModelX on ContactModel {
  ContactEntity toEntity() => ContactEntity(
        id: id,
        name: name,
        phoneNumber: phoneNumber,
        email: email,
        address: address,
        notes: notes,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
} 