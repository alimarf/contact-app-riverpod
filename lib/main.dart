import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/providers/shared_preferences_provider.dart';
import 'core/router/app_router.dart';

Future<void> main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();

  // Run the app with the initialized SharedPreferences
  runApp(MyRoot(prefs: prefs));
}

class MyRoot extends StatefulWidget {
  final SharedPreferences prefs;
  const MyRoot({super.key, required this.prefs});

  @override
  State<MyRoot> createState() => _MyRootState();
}

class _MyRootState extends State<MyRoot> {
  Key _providerKey = UniqueKey();

  void restartApp() {
    setState(() {
      _providerKey = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      key: _providerKey,
      overrides: [
        sharedPreferencesProvider.overrideWithValue(widget.prefs),
      ],
      child: MyApp(onRestart: restartApp),
    );
  }
}

class MyApp extends ConsumerWidget {
  final VoidCallback onRestart;
  const MyApp({super.key, required this.onRestart});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider(onRestart));
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ContactME',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
