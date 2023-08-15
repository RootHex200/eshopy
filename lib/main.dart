import 'package:eshopy/src/core/values/app_colors.dart';
import 'package:eshopy/src/main/presentation/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'eshopy',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Appcolor.appbg
      ),
      home: const MainScreen(),
    );
  }
}
