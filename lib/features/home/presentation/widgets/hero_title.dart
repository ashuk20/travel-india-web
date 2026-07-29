import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_colors.dart';
import 'package:travel_india/app/theme/app_dimensions.dart';
import 'package:travel_india/app/theme/app_spacing.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';

class HeroTitle extends StatelessWidget {
  const HeroTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppDimensions.heroTextWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("EXPLORE INDIA", style: AppTextStyles.heroTitle),
          // const SizedBox(height: AppSpacing.xs),
          Text(
            "Like Never Before",
            style: AppTextStyles.heroSubTitle.copyWith(
              fontSize: 25,
              color: AppColors.secondary,
            ),
          ),
          const SizedBox(height: AppSpacing.sm),
          Text(
            "Search destinations, plan trips, and uncover hidden gems.",
            style: AppTextStyles.heroDescription,
          ),
        ],
      ),
    );
  }
}
