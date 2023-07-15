import 'package:flutter/material.dart';

class DrawerLayout extends StatefulWidget {
  const DrawerLayout({super.key});

  @override
  State<DrawerLayout> createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAccountsDrawerHeader(
          currentAccountPicture: ClipOval(
            child: Image.asset('lib/assets/images/eu.jpeg')
          ),
          accountName: const Text('Pedro Grando'), 
          accountEmail: const Text('grandop03@gmail.com'),
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
          subtitle: const Text('Finalizar sessão'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/login');
          },
        )
      ],
    );
  }
}