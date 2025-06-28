import 'dart:developer' as developer;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/providers/shared_preferences_provider.dart';
import '../../../auth/data/services/auth_service.dart';

final splashProvider = FutureProvider.autoDispose<bool>((ref) async {
  try {
    developer.log('Checking authentication status...');
    
    final prefs = ref.watch(sharedPreferencesProvider);
    if (prefs == null) {
      developer.log('SharedPreferences is null');
      return false;
    }
    
    final authService = AuthService(prefs);
    final isAuthenticated = authService.isAuthenticated();
    
    developer.log('Authentication check complete. Authenticated: $isAuthenticated');
    
    // Simulate loading time (reduced from 2 seconds to 1 second)
    await Future.delayed(const Duration(seconds: 1));
    
    return isAuthenticated;
  } catch (e, stackTrace) {
    developer.log(
      'Error in splashProvider',
      error: e,
      stackTrace: stackTrace,
    );
    return false; // Default to not authenticated on error
  }
});