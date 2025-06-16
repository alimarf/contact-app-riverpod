import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/foundation.dart';
import '../providers/contact_notifier.dart';
import '../../../auth/presentation/providers/auth_providers.dart';
import '../../domain/entities/contact_entity.dart';

class ContactListScreen extends ConsumerStatefulWidget {
  const ContactListScreen({super.key});

  @override
  ConsumerState<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends ConsumerState<ContactListScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(contactNotifierProvider.notifier).loadContacts());
  }

  @override
  Widget build(BuildContext context) {
    final contactsState = ref.watch(contactNotifierProvider);

    ref.listen<AsyncValue<List<ContactEntity>>>(contactNotifierProvider, (previous, next) {
      final notifier = ref.read(contactNotifierProvider.notifier);
      if (notifier.lastAction == 'delete' && previous is AsyncLoading && next is AsyncData) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Contact deleted successfully.')),
        );
        notifier.clearLastAction();
      } else if (next is AsyncError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to delete contact: ${next.error}')),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              final confirm = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('Are you sure you want to logout?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: const Text('Logout'),
                    ),
                  ],
                ),
              );
              if (confirm == true) {
                final authService = ref.read(authServiceProvider);
                await authService.removeToken();
                if (mounted) {
                  context.go('/login');
                }
              }
            },
          ),
        ],
      ),
      body: contactsState.when(
        data: (contacts) => _buildContactList(contacts),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) {
          if (kDebugMode) {
            debugPrint('Error loading contacts: $error');
          }
          return const Center(
            child: Text('Failed to load contacts. Please try again.'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push('/create-contact');
          ref.read(contactNotifierProvider.notifier).loadContacts();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildContactList(List<ContactEntity> contacts) {
    if (contacts.isEmpty) {
      return const Center(
        child: Text('No contacts found. Add some contacts!'),
      );
    }

    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        final initial = (contact.name.isNotEmpty) ? contact.name[0].toUpperCase() : '?';
        return ListTile(
          leading: CircleAvatar(
            child: Text(initial),
          ),
          title: Text(contact.name),
          subtitle: Text(contact.phoneNumber),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () async {
                 await context.push('/edit-contact/${contact.id}');
                 ref.read(contactNotifierProvider.notifier).loadContacts();
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () async {
                  final confirm = await showDialog<bool>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Delete Contact'),
                      content: const Text('Are you sure you want to delete this contact?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text('Delete'),
                        ),
                      ],
                    ),
                  );
                  if (confirm == true) {
                    ref.read(contactNotifierProvider.notifier).deleteContact(contact.id);
                  }
                },
              ),
            ],
          ),
          onTap: () {
            context.push('/edit-contact/${contact.id}');
          },
        );
      },
    );
  }
} 