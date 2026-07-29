import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_text_styles.dart';

class SearchChip extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const SearchChip({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.12),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white.withOpacity(.20),width: 0.8),
        ),
        child: Text(
          title,
          style: AppTextStyles.navbar.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
