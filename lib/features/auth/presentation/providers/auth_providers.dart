import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/providers/shared_preferences_provider.dart';
import '../../data/services/auth_service.dart';

/// Provider for the [AuthService] that handles authentication-related operations.
final authServiceProvider = Provider<AuthService>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return AuthService(prefs);
}); 