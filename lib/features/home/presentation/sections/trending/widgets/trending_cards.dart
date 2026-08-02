import 'package:flutter/material.dart';
import 'package:travel_india/features/home/data/destination_data.dart';
import 'package:travel_india/features/home/presentation/sections/trending/widgets/app_destination_card.dart';

class TrendingCards extends StatelessWidget {
  const TrendingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return AppDestinationCard(
            destination: DestinationData.trending[index],
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 24),
        itemCount: DestinationData.trending.length,
      ),
    );
  }
}
