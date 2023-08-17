import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_stuff/src/features/auth/interactor/atoms/auth_atoms.dart';
import 'package:home_stuff/src/features/auth/interactor/states/auth_state.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/splash');
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: Modular.routerConfig,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      title: 'Home Stuff',
    );
  }

  @override
  void initState() {
    super.initState();

    rxObserver(
      () => authState.value,
      effect: (state) {
        if (state is Unlogged) {
          Modular.to.navigate('/auth/login');
        } else if (state is Logged) {
          Modular.to.navigate('/things/');
        }
      },
    );
  }
}
