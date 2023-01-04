import 'package:flutter/material.dart';
import 'package:todolist_flutter_app/features/login/login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const LoginView());
  }
}
