import 'package:flutter/material.dart';
import 'package:tinder_mockup/src/ui/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder Mockup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        extensions: <ThemeExtension<dynamic>>[],
      ),
      home: const LoginPage(),
    );
  }
}
