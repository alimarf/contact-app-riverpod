import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/network/dio_client.dart';
import '../../data/services/contact_service.dart';
import '../../../auth/presentation/providers/auth_providers.dart';

/// Provider for the [ContactService] that handles contact-related operations.
final contactServiceProvider = Provider<ContactService>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return ContactService(dioClient);
});

/// Provider for the [DioClient] that handles HTTP requests.
final dioClientProvider = Provider<DioClient>((ref) {
  final authService = ref.watch(authServiceProvider);
  return DioClient(authService);
}); 