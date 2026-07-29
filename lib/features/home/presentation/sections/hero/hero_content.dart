import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_india/app/theme/app_colors.dart';
import 'package:travel_india/app/theme/app_spacing.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';
import 'package:travel_india/features/home/presentation/widgets/hero_search.dart';
import 'package:travel_india/features/home/presentation/widgets/hero_title.dart';
import 'package:travel_india/shared/widgets/search/app_search_bar.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 560,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      HeroTitle(),
                      SizedBox(height: AppSpacing.xl),
                     HeroSearch(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
