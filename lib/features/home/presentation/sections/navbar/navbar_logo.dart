import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Travio",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Plan Better. Travel Smarter.",
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }
}
