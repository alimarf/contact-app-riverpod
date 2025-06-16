import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/providers/shared_preferences_provider.dart';
import '../../../contacts/presentation/providers/contact_provider.dart';
import '../../domain/entities/auth_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/services/auth_api_service.dart';
import '../../data/services/auth_service.dart';
import '../../../../core/network/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

final dioClientProvider = Provider.autoDispose<DioClient>((ref) {
  final authService = ref.watch(authServiceProvider);
  return DioClient(authService);
});

final authApiServiceProvider = Provider<AuthApiService>((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return AuthApiService(dio: dioClient.dio);
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final apiService = ref.watch(authApiServiceProvider);
  return AuthRepositoryImpl(apiService);
});

final authServiceProvider = Provider.autoDispose<AuthService>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return AuthService(prefs);
});

class AuthState {
  final bool isLoading;
  final AuthEntity? user;
  final String? error;

  AuthState({
    this.isLoading = false,
    this.user,
    this.error,
  });

  AuthState copyWith({
    bool? isLoading,
    AuthEntity? user,
    String? error,
  }) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      user: user ?? this.user,
      error: error,
    );
  }

  factory AuthState.initial() => AuthState();
}

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository repository;
  final Ref ref;

  AuthNotifier({required this.repository, required this.ref}) : super(AuthState.initial());

  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await repository.signup(
        name: name,
        email: email,
        password: password,
      );
      final authService = ref.read(authServiceProvider);
      await authService.saveToken(user.token);
      state = state.copyWith(isLoading: false, user: user);
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        user: null,
      );
      log(e.toString());
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final user = await repository.login(
        email: email,
        password: password,
      );
      final authService = ref.read(authServiceProvider);
      print('AuthNotifier: Saving token after login: ${user.token}');
      await authService.saveToken(user.token);
      // Print all SharedPreferences keys/values
      final prefs = await SharedPreferences.getInstance();
      print('All SharedPreferences after login:');
      for (var key in prefs.getKeys()) {
        print('[33m$key: ${prefs.get(key)}[0m');
      }
      state = state.copyWith(isLoading: false, user: user);
    } catch (e) {
      final authService = ref.read(authServiceProvider);
      await authService.removeToken(); // Clear token on error
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
        user: null,
      );
      log(e.toString());
    }
  }

  Future<void> logout() async {
    final authService = ref.read(authServiceProvider);
    await authService.removeToken();
    ref.invalidate(authServiceProvider);
    ref.invalidate(dioClientProvider);
    state = AuthState.initial();
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthNotifier(repository: repository, ref: ref);
}); 