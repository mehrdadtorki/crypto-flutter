import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/core/storage/app_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkSession();
  }

    Future<void> _checkSession() async {
      await Future.delayed(const Duration(seconds: 2));

      final token = await AppStorage.getSession();

      if (!mounted) return;

      if (token == null) {
        context.go('/auth');
      } else {
        // context.go('/home');
      }
    }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: FlutterLogo(size: 120)));
  }
}
