import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'メールアドレス',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'パスワード',
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ENTER'),
            )
          ],
        ),
      ),
    );
  }
}
