import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/providers/shared_preferences_provider.dart';
import '../../../auth/data/services/auth_service.dart';

final splashProvider = FutureProvider.autoDispose((ref) async {
  final prefs = ref.watch(sharedPreferencesProvider);
  final authService = AuthService(prefs);
  final isAuthenticated = authService.isAuthenticated();
  
  // Simulate loading time
  await Future.delayed(const Duration(seconds: 2));
  
  return isAuthenticated;
});