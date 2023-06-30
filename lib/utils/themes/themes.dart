import 'package:flutter/material.dart';
import 'package:store_management_client/utils/colors/colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  filledButtonTheme: const FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(AppColors.primary),
      textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    ),
  ),
  outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(
    textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 22, fontWeight: FontWeight.w600)),
    side: MaterialStatePropertyAll(BorderSide(color: Colors.red)),
    foregroundColor: MaterialStatePropertyAll(Colors.red),
  )),
  listTileTheme: const ListTileThemeData(
    leadingAndTrailingTextStyle: TextStyle(color: AppColors.primary),
    iconColor: AppColors.primary,
    titleTextStyle: TextStyle(fontSize: 20, color: AppColors.greyVeryDark),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: AppColors.background,
  ),
  tabBarTheme: const TabBarTheme(
    labelColor: Colors.white,
    indicatorColor: Colors.white,
    labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    unselectedLabelColor: Colors.white,
  ),
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(AppColors.greyDark),
      textStyle: MaterialStatePropertyAll(
          TextStyle(decoration: TextDecoration.underline, fontSize: 16, fontWeight: FontWeight.bold)),
    ),
  ),
  buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primary, shape: RoundedRectangleBorder(side: BorderSide(style: BorderStyle.none))),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(fontSize: 16, color: AppColors.hintText),
    fillColor: AppColors.textBox,

    filled: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 10),
    border: OutlineInputBorder(borderSide: BorderSide(width: 0, style: BorderStyle.none)),
    // isDense: true,
  ),
  iconTheme: const IconThemeData(
    color: AppColors.primaryLight,
    size: 24,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
    splashColor: AppColors.primaryLight,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColors.background,
    // surfaceTintColor: Colors.white,
  ),
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.background,
  hintColor: AppColors.hintText,
  secondaryHeaderColor: AppColors.greyLight,
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(weight: 10, opacity: 1, color: Colors.white),
      actionsIconTheme: IconThemeData(color: Colors.white),
      backgroundColor: AppColors.primary,
      // foregroundColor: Colors.white,
      centerTitle: false,
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
  textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 40, color: AppColors.greyVeryDark, fontWeight: FontWeight.bold),
      headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.greyDark),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: AppColors.greyDark),
      headlineSmall: TextStyle(fontSize: 16, color: AppColors.greyDark, fontWeight: FontWeight.bold),
      labelSmall: TextStyle(fontSize: 16, color: AppColors.hintText),
      labelMedium: TextStyle(fontSize: 16, color: AppColors.greyDark),
      labelLarge: TextStyle(fontSize: 18, color: AppColors.greyDark),
      bodyMedium: TextStyle(fontSize: 20, color: AppColors.greyVeryDark)),
);
