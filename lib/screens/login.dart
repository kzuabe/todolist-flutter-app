import 'package:flutter/material.dart';
import 'package:todolist_flutter_app/features/login/login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const LoginView());
  }
}
