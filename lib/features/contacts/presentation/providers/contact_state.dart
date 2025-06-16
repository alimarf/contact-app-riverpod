import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/contact_entity.dart';

part 'contact_state.freezed.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState({
    @Default([]) List<ContactEntity> contacts,
    @Default(false) bool isLoading,
    String? error,
  }) = _ContactState;
} 