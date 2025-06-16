import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/contact_entity.dart';
import '../providers/contact_notifier.dart';

class EditContactScreen extends ConsumerStatefulWidget {
  final String contactId;
  const EditContactScreen({super.key, required this.contactId});

  @override
  ConsumerState<EditContactScreen> createState() => _EditContactScreenState();
}

class _EditContactScreenState extends ConsumerState<EditContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  ContactEntity? _contact;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadContact();
  }

  void _loadContact() {
    final contactsState = ref.read(contactNotifierProvider);
    if (contactsState is AsyncData<List<ContactEntity>>) {
      final contact = contactsState.value.firstWhere(
        (c) => c.id == widget.contactId,
        orElse: () => ContactEntity(
          id: widget.contactId,
          name: '',
          phoneNumber: '',
          email: null,
          address: null,
          notes: null,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );
      _contact = contact;
      _nameController.text = contact.name;
      _phoneController.text = contact.phoneNumber;
    }
    setState(() {
      _loading = false;
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate() && _contact != null) {
      final updatedContact = _contact!.copyWith(
        name: _nameController.text,
        phoneNumber: _phoneController.text,
      );
      try {
        await ref.read(contactNotifierProvider.notifier).updateContact(updatedContact);
        if (mounted) {
          context.pop();
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error updating contact: $e'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Update Contact'),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 