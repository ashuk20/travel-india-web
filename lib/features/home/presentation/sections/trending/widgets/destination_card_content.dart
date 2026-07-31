import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';

class DestinationCardInfo extends StatelessWidget {
  const DestinationCardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Ladakh", style: AppTextStyles.cardTitle),
          SizedBox(height: 4),
          Text(
            "Lonavala is a hill station surrounded by green valleys in western India near Mumbai.",
            style: TextStyle(fontSize: 14, color: Colors.grey),
            overflow: TextOverflow.fade,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.location_on, size: 16, color: Colors.grey),
              SizedBox(width: 4),
              Expanded(
                child: Text(
                  "Pune",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
