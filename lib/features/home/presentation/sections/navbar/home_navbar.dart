import 'package:flutter/widgets.dart';
import 'package:travel_india/features/home/presentation/sections/navbar/navbar_actions.dart';
import 'package:travel_india/features/home/presentation/sections/navbar/navbar_logo.dart';
import 'package:travel_india/features/home/presentation/sections/navbar/navbar_menu.dart';

class HomeNavbar extends StatelessWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 80,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1400),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: const Row(
                children: [
                  NavbarLogo(),
                  Spacer(),
                  NavbarMenu(),
                  Spacer(),
                  NavbarActions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
