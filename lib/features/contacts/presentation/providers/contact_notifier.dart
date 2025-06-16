import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/services/contact_service.dart';
import '../../domain/entities/contact_entity.dart';
import 'contact_provider.dart';

final contactNotifierProvider = StateNotifierProvider<ContactNotifier, AsyncValue<List<ContactEntity>>>((ref) {
  final contactService = ref.watch(contactServiceProvider);
  return ContactNotifier(contactService);
});

class ContactNotifier extends StateNotifier<AsyncValue<List<ContactEntity>>> {
  final ContactService _contactService;
  String? _lastAction;
  String? get lastAction => _lastAction;
  void clearLastAction() => _lastAction = null;

  ContactNotifier(this._contactService) : super(const AsyncValue.loading());

  Future<void> loadContacts() async {
    try {
      state = const AsyncValue.loading();
      final contacts = await _contactService.getContacts();
      state = AsyncValue.data(contacts);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> deleteContact(String id) async {
    _lastAction = 'delete';
    try {
      await _contactService.deleteContact(id);
      state.whenData((contacts) {
        state = AsyncValue.data(
          contacts.where((contact) => contact.id != id).toList(),
        );
      });
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> createContact(ContactEntity contact) async {
    try {
      final newContact = await _contactService.createContact(contact);
      state.whenData((contacts) {
        state = AsyncValue.data([...contacts, newContact]);
      });
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  Future<void> updateContact(ContactEntity contact) async {
    try {
      final updatedContact = await _contactService.updateContact(contact);
      state.whenData((contacts) {
        state = AsyncValue.data(
          contacts.map((c) => c.id == contact.id ? updatedContact : c).toList(),
        );
      });
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }
} 