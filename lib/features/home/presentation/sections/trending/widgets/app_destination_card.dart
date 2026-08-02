import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_dimensions.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';
import 'package:travel_india/features/home/data/models/destination_model.dart';

class AppDestinationCard extends StatefulWidget {
  final DestinationModel destination;

  const AppDestinationCard({super.key, required this.destination});

  @override
  State<AppDestinationCard> createState() => _AppDestinationCardState();
}

class _AppDestinationCardState extends State<AppDestinationCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        transform: isHovered
            ? (Matrix4.identity()..translate(0.0, -8.0))
            : Matrix4.identity(),
        duration: const Duration(milliseconds: 200),
        width: AppDimensions.cardWidth,
        height: AppDimensions.cardHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.12),
              blurRadius: 30,
              spreadRadius: -2,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              AnimatedScale(
                duration: const Duration(microseconds: 300),
                scale: isHovered ? 1.08 : 1.0,
                child: Image.asset(widget.destination.image, fit: BoxFit.cover),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.0, 0.45, 0.70, 0.88, 1.0],
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black12,
                      Colors.black45,
                      Colors.black87,
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.35),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white24),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        widget.destination.rating.toStringAsFixed(1),
                        style: AppTextStyles.destinationRating,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 18,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.destination.title,
                      style: AppTextStyles.destinationTitle,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.destination.subtitle,
                      style: AppTextStyles.destinationSubtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 15,
                          color: Colors.white.withOpacity(.8),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          widget.destination.location,
                          style: TextStyle(
                            color: Colors.white.withOpacity(.8),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
