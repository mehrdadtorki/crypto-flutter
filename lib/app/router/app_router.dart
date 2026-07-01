import 'package:go_router/go_router.dart';
import 'package:my_app/features/auth/view/auth_page.dart';
import 'package:my_app/features/splash/view/splash_screen.dart';


final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/auth', builder: (context, state) => const AuthPage())
  ]
);