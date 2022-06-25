import 'package:flutter/material.dart';
import 'package:gehu/screens/contactUsScreen.dart';

import 'package:gehu/screens/placement/placement_screen.dart';

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
      ],
    ),
  );
}
