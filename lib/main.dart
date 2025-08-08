import 'package:flutter/material.dart';
import 'package:portfolio/Pages/landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  // Optional: You can persist theme choice using SharedPreferences here
  // Future<void> loadSavedTheme() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final saved = prefs.getString('themeMode') ?? 'system';
  //   setState(() {
  //     _themeMode = ThemeMode.values.firstWhere((e) => e.name == saved);
  //   });
  // }

  void setLightMode() => setState(() => _themeMode = ThemeMode.light);
  void setDarkMode() => setState(() => _themeMode = ThemeMode.dark);
  void setSystemMode() => setState(() => _themeMode = ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData(
        fontFamily: 'Quicksand',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        fontFamily: 'Quicksand',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: LandingPage(
        themeMode: _themeMode,
        setLightMode: setLightMode,
        setDarkMode: setDarkMode,
        setSystemMode: setSystemMode,
      ),
    );
  }
}
