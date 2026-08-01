import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_india/app/theme/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static final heroTitle = GoogleFonts.inter(
    fontSize: 50,
    fontWeight: FontWeight.w800,
    height: 1.0,
    color: AppColors.textWhite,
    letterSpacing: 2,
  );

  static final heroSubTitle = GoogleFonts.inter(
    fontSize: 40,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w600,
    color: AppColors.secondary,
    height: 0.9,
  );

  static final heroDescription = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.8,
    color: Colors.white.withOpacity(.9),
  );

  static final searchButton = GoogleFonts.inter(
    fontSize: 12,
    color: Colors.white,
  );

  static final searchHint = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: Color(0xff9CA3AF),
  );

  static final heroSectionLabel = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white70,
    letterSpacing: 0.5,
  );
  static final sectionTitle = GoogleFonts.playfairDisplay(
    fontSize: 34,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );
  static final sectionAction = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  );

  //destination card

  static final destinationTitle = GoogleFonts.inter(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static final destinationSubtitle = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(.85),
  );
  static final destinationLocation = GoogleFonts.inter(
    fontSize: 13,
    color: Colors.white.withOpacity(.8),
  );
  static final destinationRating = GoogleFonts.inter(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final navbar = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
  );
  static final button = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static final display = GoogleFonts.inter(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static final h1 = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
  );
  static final h2 = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  static final body = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
  static final caption = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static final cardTitle = GoogleFonts.inter(
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
}
