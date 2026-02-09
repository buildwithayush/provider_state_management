import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/theme_provider.dart';

class DarkThemeScreen extends StatelessWidget {
  const DarkThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = context.watch<ThemeChangeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Change'),
      ),
      body: RadioGroup<ThemeMode>(
        groupValue: themeChanger.themeMode,
        onChanged: (ThemeMode? value) {
          if (value != null) {
            context.read<ThemeChangeProvider>().setTheme(value);
          }
        },
        child: const Column(
          children: [
            RadioListTile(
              title: Text('Light Mode'),
              value: ThemeMode.light,
            ),
            RadioListTile(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
            ),
            RadioListTile(
              title: Text('System Mode'),
              value: ThemeMode.system,
            ),
          ],
        ),
      ),
    );
  }
}
