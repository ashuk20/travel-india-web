import 'package:flutter/widgets.dart';
import 'package:travel_india/features/home/presentation/sections/navbar/widgets/navbar_menu_item.dart';

class NavbarMenu extends StatelessWidget {
  const NavbarMenu({super.key});

  static const menuItems = [
    "Explore",
    "Destinations",
    "Trip Ideas",
    "Stories",
    "About Us",
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          menuItems.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: NavbarMenuItem(title: menuItems[index]),
          ),
        ),
      ),
    );
  }
}
