import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_dimensions.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';
import 'package:travel_india/features/home/data/models/destination_model.dart';
import 'package:travel_india/shared/widgets/hover/app_hover.dart';

class AppDestinationCard extends StatelessWidget {
  final DestinationModel destination;

  const AppDestinationCard({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return AppHover(
      builder: (context, isHovered) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: AppDimensions.cardWidth,
          height: AppDimensions.cardHeight,

          transform: Matrix4.identity()..translate(0.0, isHovered ? -8.0 : 0.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(isHovered ? 0.18 : .10),
                blurRadius: isHovered ? 40 : 24,
                spreadRadius: -2,
                offset: Offset(0, isHovered ? 18 : 10),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                print("card clicked");
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    AnimatedScale(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOut,
                      scale: isHovered ? 1.06 : 1.0,
                      child: Image.asset(destination.image, fit: BoxFit.cover),
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
                              destination.rating.toStringAsFixed(1),
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
                            destination.title,
                            style: AppTextStyles.destinationTitle,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            destination.tagline,
                            style: AppTextStyles.destinationtagline,
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
                                destination.location,
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
          ),
        );
      },
    );
  }
}
