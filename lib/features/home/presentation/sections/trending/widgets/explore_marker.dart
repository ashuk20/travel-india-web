import 'package:flutter/material.dart';
import 'package:travel_india/features/home/data/models/map_marker_model.dart';

class ExploreMarker extends StatelessWidget {
  final MapMarkerModel marker;
  const ExploreMarker({super.key, required this.marker});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.location_on, color: Color(0xff16A34A), size: 28);
  }
}
