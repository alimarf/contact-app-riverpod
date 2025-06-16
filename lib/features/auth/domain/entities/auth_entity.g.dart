// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthEntityImpl _$$AuthEntityImplFromJson(Map<String, dynamic> json) =>
    _$AuthEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$AuthEntityImplToJson(_$AuthEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'token': instance.token,
      'message': instance.message,
    };
