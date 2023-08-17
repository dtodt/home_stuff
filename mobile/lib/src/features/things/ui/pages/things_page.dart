import 'package:flutter/material.dart';
import 'package:home_stuff/src/features/auth/interactor/atoms/auth_atoms.dart';

class ThingsPage extends StatefulWidget {
  const ThingsPage({super.key});

  @override
  State<ThingsPage> createState() => _ThingsPageState();
}

class _ThingsPageState extends State<ThingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Things'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            children: [
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                  logoutAction();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
