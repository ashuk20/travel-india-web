import 'package:flutter/material.dart';
import 'package:travel_india/features/home/presentation/sections/trending/widgets/explore_map_header.dart';

class AppExploreMapCard extends StatelessWidget {
  const AppExploreMapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 30,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExploreMapHeader(),
          SizedBox(height: 24),
          Expanded(child: Placeholder(),)
        ],
      ),
    );
  }
}
