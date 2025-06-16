import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/auth_repository.dart';
import 'auth_state.dart';
import '../../../core/error/failures.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  // Implement the repository provider here
  throw UnimplementedError();
});

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthNotifier(repository);
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository repository;

  AuthNotifier(this.repository) : super(const AuthState.initial());

  Future<void> login(String email, String password) async {
    state = const AuthState.loading();
    final result = await repository.login(email, password);
    result.fold(
      (failure) => state = AuthState.error('Login failed'),
      (auth) => state = AuthState.authenticated(auth),
    );
  }

  Future<void> signup(String email, String password) async {
    state = const AuthState.loading();
    final result = await repository.signup(email, password);
    result.fold(
      (failure) => state = AuthState.error('Signup failed'),
      (auth) => state = AuthState.authenticated(auth),
    );
  }

  Future<void> logout() async {
    state = const AuthState.loading();
    final result = await repository.logout();
    result.fold(
      (failure) => state = AuthState.error('Logout failed'),
      (_) => state = const AuthState.initial(),
    );
  }
} 