import 'package:flutter/material.dart';
import 'package:home_stuff/src/features/auth/interactor/atoms/auth_atoms.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          'Things',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2))
        .whenComplete(checkAuthAction.call);
  }
}
