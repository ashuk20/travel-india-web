import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_india/app/theme/app_colors.dart';
import 'package:travel_india/app/theme/app_dimensions.dart';
import 'package:travel_india/app/theme/app_spacing.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';
import 'package:travel_india/features/home/presentation/widgets/hero_popular_searches.dart';
import 'package:travel_india/features/home/presentation/widgets/hero_search.dart';
import 'package:travel_india/features/home/presentation/widgets/hero_title.dart';
import 'package:travel_india/shared/widgets/search/app_search_bar.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: AppDimensions.heroContentWidth),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 64.0,
          right: 64,
          // top: AppDimensions.heroContentTop,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: const [
            HeroTitle(),
            SizedBox(height: AppSpacing.md),
            HeroSearch(),
            SizedBox(height: 28),
            HeroPopularSearches(),
          ],
        ),
      ),
    );
  }
}
