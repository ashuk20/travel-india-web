import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_dimensions.dart';
import 'package:travel_india/shared/widgets/search/app_search_bar.dart';

class HeroSearch extends StatelessWidget {
  const HeroSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: AppDimensions.heroSearchWidth,
      child: const AppSearchBar(hintText: "Where do you want to go?"),
    );
  }
}
