import 'package:flutter/material.dart';
import 'package:todolist_flutter_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My APP',
      initialRoute: '/',
      routes: {'/': (context) => const HomeScreen()},
    );
  }
}
