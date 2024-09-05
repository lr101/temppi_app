import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:temppi_app/provider/shared_preferences/shared_preferences_provider.dart';
import 'package:temppi_app/provider/theme/theme_provider.dart';
import 'features/overview/presentation/overview.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(sharedPreferences),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Temppi',
      theme: ref.watch(themeDataProvider),
      darkTheme: ref.watch(darkThemeDataProvider),
      themeMode: ref.watch(themeModeStateProvider),
      home: const Overview(),
    );
  }
}
