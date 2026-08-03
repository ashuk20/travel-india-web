import 'package:flutter/material.dart';
import 'package:travel_india/features/home/data/models/map_marker_model.dart';

class MapMakerData {
  static const markers = [
    MapMarkerModel(name: "Mumbai", Position: Offset(0.01, 0.34)),
    MapMarkerModel(name: "Pune", Position: Offset(0.10, 0.40)),
    MapMarkerModel(name: "Nashik", Position: Offset(0.10, 0.20)),
    MapMarkerModel(name: "Mahabaleshwar", Position: Offset(0.37, 0.82)),
  ];
}
