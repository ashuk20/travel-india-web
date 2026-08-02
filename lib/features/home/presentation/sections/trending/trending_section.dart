import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_india/features/home/data/destination_data.dart';
import 'package:travel_india/features/home/presentation/sections/trending/widgets/app_destination_card.dart';
import 'package:travel_india/features/home/presentation/sections/trending/widgets/app_explore_map_card.dart';
import 'package:travel_india/features/home/presentation/sections/trending/widgets/trending_cards.dart';
import 'package:travel_india/shared/widgets/section/app_section_header.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSectionHeader(
                  title: "Trending Destinations",
                  actionText: "View All",
                  onTap: () {},
                ),
                const SizedBox(height: 28),
                TrendingCards(),
              ],
            ),
          ),
          const SizedBox(width: 36),
          Expanded(
            flex: 3,
            child: AppExploreMapCard(),
            // Container(
            //   height: 430,
            //   color: Colors.red,
            // ),
          ),
        ],
      ),

      // Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     AppSectionHeader(
      //       title: "Trending Destinations",
      //       actionText: "View All",
      //       onTap: () {},
      //     ),
      //     const SizedBox(height: 32),
      //   ],
      // ),
    );
  }
}
