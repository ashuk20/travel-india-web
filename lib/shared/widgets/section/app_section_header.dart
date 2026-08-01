import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_india/app/theme/app_colors.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';

class AppSectionHeader extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback? onTap;
  const AppSectionHeader({
    super.key,
    required this.title,
    required this.actionText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: AppTextStyles.sectionTitle,),
        const Spacer(),
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(30),
          child: Row(
            children: [
              Text(actionText,style: AppTextStyles.sectionAction,),
               const SizedBox(width: 6,),
               const Icon(Icons.arrow_forward_ios_rounded,size: 14,color: AppColors.primary,)
            ],
          ),
        )
      ],
    );
  }
}
