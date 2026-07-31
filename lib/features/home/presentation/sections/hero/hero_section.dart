import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_india/features/home/presentation/sections/hero/hero_content.dart';
import 'package:travel_india/features/home/presentation/sections/navbar/home_navbar.dart';
import 'package:travel_india/shared/widgets/search/app_search_bar.dart';
import 'package:travel_india/shared/widgets/section/app_section_header.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("hero/hero1.webp"),
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0x66000000), Color(0xAA000000)],
              ),
            ),
          ),
          const Positioned(top: 0, left: 0, right: 0, child: HomeNavbar()),
          Positioned(top: 100, left: 0, right: 0, child: HeroContent()),
        
        ],
      ),
    );
  }
}
