import 'package:flutter/material.dart';

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
          Text(
            "Explore Maharashtra",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Click on the map to explore amazing\nplaces across Maharashtra.",
            style: TextStyle(color: Colors.grey.shade600, height: 1.5),
          ),
          const Spacer(),
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color(0xffF6F8FA),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 54,
            child: FilledButton(
              onPressed: () {},
              child: const Text("Explore Map"),
            ),
          ),
        ],
      ),
    );
  }
}
