import 'package:flutter/material.dart';
import 'package:gehu/screens/contactUsScreen.dart';
import 'package:gehu/screens/login.dart';

import 'package:gehu/screens/placement/placement_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';

Drawer myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Image.network(
            "https://mm.easeadmissions.com/images/logo/graphic-era-university-dehradun-logo.jpg",
          ),
          // decoration: const BoxDecoration(color: Colors.blue),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          leading: const Icon(Icons.workspace_premium),
          title: const Text('Placement'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const PlacementScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Faculty'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.call),
          title: const Text('Contact Us'),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const ContactUsScreen(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Logout'),
          onTap: () async {
            var prefs = await SharedPreferences.getInstance();
            await prefs.setBool('isAdmin', false);
            await prefs.setBool('skipped', false);
            Navigator.pushAndRemoveUntil<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const LoginScreen(),
              ),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ],
    ),
  );
}
