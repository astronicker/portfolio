import 'package:flutter/material.dart';
import 'package:portfolio/Pages/about.dart';
import 'package:portfolio/Pages/contacts.dart';
import 'package:portfolio/Pages/home.dart';
import 'package:portfolio/Pages/projects.dart';
import 'package:portfolio/Pages/resume.dart';
import 'package:portfolio/Pages/tech.dart';

class LandingPage extends StatelessWidget {
  final ThemeMode themeMode;
  final VoidCallback setLightMode;
  final VoidCallback setDarkMode;
  final VoidCallback setSystemMode;

  const LandingPage({
    super.key,
    required this.themeMode,
    required this.setLightMode,
    required this.setDarkMode,
    required this.setSystemMode,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.surfaceContainer,
        title: Padding(
          padding: const EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("astronicker"),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      isDark ? Icons.light_mode : Icons.dark_mode,
                      color:
                          themeMode == ThemeMode.system
                              ? Colors.grey
                              : colorScheme.primary,
                    ),
                    onPressed: () {
                      if (isDark) {
                        setLightMode();
                      } else {
                        setDarkMode();
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.brightness_auto,
                      color:
                          themeMode == ThemeMode.system
                              ? colorScheme.primary
                              : Colors.grey,
                    ),
                    onPressed: setSystemMode,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: const [
          HomePage(),
          AboutPage(),
          ResumePage(),
          TechPage(),
          ProjectPage(),
          ContactPage(),
        ],
      ),
    );
  }
}
