import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist_flutter_app/auth_widget.dart';
import 'package:todolist_flutter_app/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:todolist_flutter_app/screens/login.dart';
import 'firebase_options.dart';

void main() async {
  await setup();
  runApp(const ProviderScope(child: MyApp()));
}

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My APP',
        home: AuthWidget(
            signedInBuilder: (_) => const HomeScreen(),
            nonSignedInBuilder: (_) => const LoginScreen()));
  }
}
