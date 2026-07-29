import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavbarMenuItem extends StatelessWidget {
  final String title;
  const NavbarMenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 17
        ),
      ),
    );
  }
}
