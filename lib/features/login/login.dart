import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String email = '';
  String password = '';

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
              onChanged: (value) {
                email = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'パスワード',
              ),
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email, password: password);
                } on FirebaseAuthException catch (e) {
                  print(e);
                }
              },
              child: const Text('ENTER'),
            )
          ],
        ),
      ),
    );
  }
}
