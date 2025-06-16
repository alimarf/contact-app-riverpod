import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/auth/presentation/pages/splash_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/contacts/presentation/screens/contact_list_screen.dart';
import '../../features/contacts/presentation/screens/create_contact_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/contacts/presentation/screens/edit_contact_screen.dart';
import '../../features/auth/presentation/screens/signup_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouterProvider = Provider.family<GoRouter, VoidCallback?>((ref, onRestart) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => LoginScreen(onRestart: onRestart),
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