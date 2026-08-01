import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';
import 'package:travel_india/features/home/presentation/widgets/search_chip.dart';

class HeroPopularSearches extends StatelessWidget {
  const HeroPopularSearches({super.key});

  static const List<String> popularSearches = [
    "Lonavala",
    "Pune",
    "Mahabaleshwar",
    "Matheran",
    "Nashik",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.local_fire_department, size: 18, color: Colors.red),
            const SizedBox(width: 6),
            Text("Trending Searches:", style: AppTextStyles.heroSectionLabel),
            const SizedBox(width: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: popularSearches
                  .map((place) => SearchChip(title: place))
                  .toList(),
            ),
          ],
        ),
      ],
    );
  }
}
