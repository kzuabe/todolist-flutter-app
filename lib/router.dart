import 'package:go_router/go_router.dart';
import 'package:todolist_flutter_app/auth_widget.dart';
import 'package:todolist_flutter_app/screens/home.dart';
import 'package:todolist_flutter_app/screens/login.dart';

final GoRouter router = GoRouter(initialLocation: '/', routes: <RouteBase>[
  GoRoute(
      path: '/',
      builder: (context, state) => AuthWidget(
          signedInBuilder: (_) => const HomeScreen(),
          nonSignedInBuilder: (_) => const LoginScreen()))
]);
