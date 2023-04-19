import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_home/app/data/constants/app_colors.dart';

class Themes {
  static ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: AppColors.kBackgroundColor,
      centerTitle: false,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: AppColors.kBackgroundColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.kBackgroundColor,
      selectedItemColor: AppColors.kPrimaryColor,
      unselectedItemColor: AppColors.kGreyColor,
    ),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent),
  );
}

SystemUiOverlayStyle defaultOverlay = const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  systemStatusBarContrastEnforced: true,
  statusBarBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.white,
  systemNavigationBarDividerColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
);
