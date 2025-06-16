import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A provider that gives access to the [SharedPreferences] instance.
/// 
/// This provider must be initialized in [main()] before use by calling:
/// ```dart
/// final prefs = await SharedPreferences.getInstance();
/// runApp(
///   ProviderScope(
///     overrides: [
///       sharedPreferencesProvider.overrideWithValue(prefs),
///     ],
///     child: const MyApp(),
///   ),
/// );
/// ```
final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError(
    'SharedPreferences must be initialized before use. '
    'Make sure to override this provider in main() with the instance from SharedPreferences.getInstance()',
  );
}); 