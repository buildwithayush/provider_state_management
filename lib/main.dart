import 'package:flutter/material.dart';
import 'package:learn_provider/provider/count_provider.dart';
import 'package:learn_provider/provider/favorite_provider.dart';
import 'package:learn_provider/provider/slider_example_provider.dart';
import 'package:learn_provider/provider/theme_provider.dart';
import 'package:learn_provider/screens/dark_theme_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderExampleProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
        ChangeNotifierProvider(create: (_) => ThemeChangeProvider()),
      ],

      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChangeProvider>(context);
          return MaterialApp(
            themeMode: themeChanger.themeMode,
            debugShowCheckedModeBanner: false,
            title: 'Learning Provider State Management',
            home: DarkThemeScreen(),
              
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.blue,
              appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
            ),

            theme: ThemeData(
              primaryColor: Colors.blue,
              appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
            ),
          );
        },
      ),
    );
  }
}
