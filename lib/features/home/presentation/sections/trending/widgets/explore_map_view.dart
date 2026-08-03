import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_india/features/home/data/datasource/map_maker_data.dart';
import 'package:travel_india/features/home/presentation/sections/trending/widgets/explore_marker.dart';

class ExploreMapView extends StatelessWidget {
  const ExploreMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        return Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              "maps/maharashtra.svg",
              fit: BoxFit.contain,
              colorFilter: const ColorFilter.mode(
                Color.fromARGB(255, 175, 196, 235),
                BlendMode.srcIn,
              ),
            ),
            ...MapMakerData.markers.map((marker) {
              return Positioned(
                left: marker.Position.dx * width,
                top: marker.Position.dy * height,
                child: ExploreMarker(marker: marker),
              );
            }),
          ],
        );
      },
    );
  }
}
