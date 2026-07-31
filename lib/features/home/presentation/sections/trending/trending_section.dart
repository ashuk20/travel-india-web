import 'package:flutter/widgets.dart';
import 'package:travel_india/features/home/presentation/sections/trending/widgets/app_destination_card.dart';
import 'package:travel_india/shared/widgets/section/app_section_header.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 60),
      child: Row(children: [AppDestinationCard()]),

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
