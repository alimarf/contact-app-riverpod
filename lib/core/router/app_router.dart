import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/contacts/presentation/screens/contact_list_screen.dart';
import '../../features/contacts/presentation/screens/create_contact_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/contacts/presentation/screens/edit_contact_screen.dart';
import '../../features/auth/presentation/screens/signup_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouterProvider = Provider.family<GoRouter, VoidCallback?>((ref, onRestart) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/contacts',
        builder: (context, state) => const ContactListScreen(),
      ),
      GoRoute(
        path: '/create-contact',
        builder: (context, state) => const CreateContactScreen(),
      ),
      GoRoute(
        path: '/edit-contact/:id',
        builder: (context, state) => EditContactScreen(contactId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
    ],
  );
});