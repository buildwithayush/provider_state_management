import 'package:flutter/material.dart';
import 'package:learn_provider/provider/count_provider.dart';
import 'package:learn_provider/provider/favorite_provider.dart';
import 'package:learn_provider/provider/list_provider.dart';
import 'package:learn_provider/provider/slider_example_provider.dart';
import 'package:learn_provider/provider/theme_provider.dart';
import 'package:learn_provider/screens/list_screen.dart';
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
        ChangeNotifierProvider(create: (_) => ListProvider()),
      ],

      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChangeProvider>(context);
          return MaterialApp(
            themeMode: themeChanger.themeMode,
            debugShowCheckedModeBanner: false,
            title: 'Learning Provider State Management',
            home: ListScreen(),
              
            // darkTheme: ThemeData(
            //   brightness: Brightness.dark,
            //   primaryColor: Colors.black,
            //   appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
            // ),

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
