import 'package:flutter/material.dart';
import 'package:learn_provider/provider/count_provider.dart';
import 'package:learn_provider/provider/slider_example_provider.dart';
import 'package:learn_provider/screens/slider_example.dart';
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
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Learning Provider State Management',
        home: SliderExample(),
      ),
    );
  }
}
