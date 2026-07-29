import 'package:flutter/material.dart';
import 'package:travel_india/app/theme/app_dimensions.dart';
import 'package:travel_india/shared/widgets/search/app_search_button.dart';
import 'package:travel_india/shared/widgets/search/app_search_field.dart';

class AppSearchBar extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final VoidCallback? onSearch;
  final ValueChanged<String>? onSubmitted;
  const AppSearchBar({
    super.key,
    required this.hintText,
    this.controller,
    this.onSearch,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimensions.pillRadius),
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            offset: const Offset(0, 12),
            color: Colors.black.withOpacity(.15),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: AppSearchField(
              hintText: hintText,
              controller: controller,
              onSubmitted: onSubmitted,
            ),
          ),
          SizedBox(width: 12),
          AppSearchButton(onTap: onSearch),
        ],
      ),
    );
  }
}
