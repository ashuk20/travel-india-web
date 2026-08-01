import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_colors.dart';
import 'package:travel_india/app/theme/app_dimensions.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';

class AppSearchButton extends StatelessWidget {
  final VoidCallback? onTap;
  const AppSearchButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: Container(
        height: AppDimensions.searchButtonHeight,
        width: AppDimensions.searchButtonWidth,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(AppDimensions.pillRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.search, color: Colors.white,size: 20,),
            const SizedBox(width: 5),
            Text("Search", style: AppTextStyles.searchButton),
          ],
        ),
      ),
    );
  }
}
