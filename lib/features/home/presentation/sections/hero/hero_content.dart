import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_india/app/theme/app_colors.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1400),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("EXPLORE INDIA", style: AppTextStyles.heroTitle),
                  const SizedBox(height: 5),
                  Text(
                    "Like Never Before",
                    style: AppTextStyles.heroSubTitle.copyWith(
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Discover breathtaking destinations, hidden gems\n"
                    "and unforgettable experiences across India.",
                    style: AppTextStyles.heroDescription,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
