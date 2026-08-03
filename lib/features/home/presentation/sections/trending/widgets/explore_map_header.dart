import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';

class ExploreMapHeader extends StatelessWidget {
  const ExploreMapHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Explore Maharashtra", style: AppTextStyles.sectionTitle),
        SizedBox(height: 8),
        Text(
          "Click on the map to explore amazing\nplaces across Maharashtra.",
          style: AppTextStyles.heroDescription.copyWith(
            color: Colors.black54,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
