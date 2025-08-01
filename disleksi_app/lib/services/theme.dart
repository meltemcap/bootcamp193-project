import 'package:disleksi_app/constants/colors.dart';
import 'package:disleksi_app/constants/radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeService extends GetxService {
  final ThemeData theme = ThemeData.light().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.secondaryColor,
        shape: const RoundedRectangleBorder(borderRadius: AppRadius.circular25),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.white,
      shape: CircleBorder(),
    ),
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(AppColors.primaryTextColor)),
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.chatTextColor),
        foregroundColor: WidgetStatePropertyAll(AppColors.grey),
      ),
    ),
    textTheme: TextTheme(
      labelSmall: GoogleFonts.lexend(color: AppColors.darkGrey, fontSize: 11),
      labelMedium: GoogleFonts.lexend(color: AppColors.labelColor, fontSize: 12),
      labelLarge: GoogleFonts.lexend(color: AppColors.yellow, fontSize: 14),
      bodySmall: GoogleFonts.lexend(color: AppColors.white, fontSize: 14),
      bodyMedium: GoogleFonts.lexend(color: AppColors.primaryTextColor, fontSize: 14, fontWeight: FontWeight.w500),
      bodyLarge: GoogleFonts.lexend(color: AppColors.primaryTextColor, fontSize: 16),
      titleSmall: GoogleFonts.lexend(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
      titleMedium: GoogleFonts.lexend(color: AppColors.primaryTextColor, fontSize: 16, fontWeight: FontWeight.w500),
      titleLarge: GoogleFonts.lexend(color: AppColors.chatTextColor, fontSize: 16, fontWeight: FontWeight.w600),
      headlineSmall: GoogleFonts.lexend(color: AppColors.primaryTextColor, fontSize: 18, fontWeight: FontWeight.w600),
      headlineMedium: GoogleFonts.lexend(color: AppColors.primaryTextColor, fontSize: 16),
      headlineLarge: GoogleFonts.lexend(color: AppColors.primaryTextColor, fontSize: 14),
      displaySmall: GoogleFonts.lexend(color: AppColors.primaryTextColor, fontSize: 24),
      displayMedium: GoogleFonts.lexend(
        color: AppColors.white,
        fontSize: 24,
        textStyle: const TextStyle(overflow: TextOverflow.ellipsis),
      ),
      displayLarge: GoogleFonts.lexend(color: AppColors.primaryTextColor, fontSize: 24, fontWeight: FontWeight.w600),
    ),
    iconTheme: const IconThemeData(color: AppColors.iconColor, size: 24),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(),
      toolbarHeight: 70,
      elevation: 0,
      shape: RoundedRectangleBorder(),
      backgroundColor: AppColors.primaryBackgroundColor,
    ),
    dialogTheme: const DialogTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: AppRadius.circular25),
      backgroundColor: AppColors.white,
    ),
    snackBarTheme: const SnackBarThemeData(),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      errorMaxLines: 2,
      border: OutlineInputBorder(
        borderRadius: AppRadius.circular40,
        borderSide: const BorderSide(color: AppColors.primaryBackgroundColorDark, width: 1),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: AppRadius.circular40,
        borderSide: BorderSide(color: AppColors.disabledColor, width: 1),
      ),
      hintStyle: const TextStyle(color: AppColors.labelColorDark, fontSize: 14, fontWeight: FontWeight.normal),
      labelStyle: const TextStyle(color: AppColors.primaryTextColor, fontSize: 14, fontWeight: FontWeight.normal),
    ),
    dividerTheme: const DividerThemeData(color: AppColors.primaryColor, thickness: 1),
    // cardTheme: const CardTheme(
    //   color: AppColors.primaryColor,
    //   elevation: 3,
    //   shape: RoundedRectangleBorder(borderRadius: AppRadius.circular15),
    // ),
  );
}
