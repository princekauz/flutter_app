import 'package:flutter/material.dart';

class AppTheme {
  // Light theme colors
  static const Color _lightPrimary = Color(0xFF2563EB);
  static const Color _lightPrimaryContainer = Color(0xFFDBEAFE);
  static const Color _lightSecondary = Color(0xFF0891B2);
  static const Color _lightSecondaryContainer = Color(0xFFCFFAFE);
  static const Color _lightTertiary = Color(0xFFF59E0B);
  static const Color _lightTertiaryContainer = Color(0xFFFEF3C7);
  static const Color _lightError = Color(0xFFEF4444);
  static const Color _lightErrorContainer = Color(0xFFFEF2F2);
  static const Color _lightSurface = Color(0xFFFFFFFF);
  static const Color _lightBackground = Color(0xFFF8FAFC);
  static const Color _lightOnPrimary = Color(0xFFFFFFFF);
  static const Color _lightOnSecondary = Color(0xFFFFFFFF);
  static const Color _lightOnTertiary = Color(0xFFFFFFFF);
  static const Color _lightOnError = Color(0xFFFFFFFF);
  static const Color _lightOnSurface = Color(0xFF0F172A);
  static const Color _lightOnBackground = Color(0xFF0F172A);
  static const Color _lightOutline = Color(0xFFE2E8F0);
  static const Color _lightOutlineVariant = Color(0xFFCBD5E1);
  static const Color _lightShadow = Color(0xFF000000);
  static const Color _lightScrim = Color(0xFF000000);
  static const Color _lightInverseSurface = Color(0xFF0F172A);
  static const Color _lightInverseOnSurface = Color(0xFFF8FAFC);
  static const Color _lightInversePrimary = Color(0xFF93C5FD);

  // Dark theme colors
  static const Color _darkPrimary = Color(0xFF93C5FD);
  static const Color _darkPrimaryContainer = Color(0xFF1E3A5F);
  static const Color _darkSecondary = Color(0xFF22D3EE);
  static const Color _darkSecondaryContainer = Color(0xFF164E63);
  static const Color _darkTertiary = Color(0xFFFBBF24);
  static const Color _darkTertiaryContainer = Color(0xFF78350F);
  static const Color _darkError = Color(0xFFF87171);
  static const Color _darkErrorContainer = Color(0xFF7F1D1D);
  static const Color _darkSurface = Color(0xFF1E293B);
  static const Color _darkBackground = Color(0xFF0F172A);
  static const Color _darkOnPrimary = Color(0xFF1E3A5F);
  static const Color _darkOnSecondary = Color(0xFF164E63);
  static const Color _darkOnTertiary = Color(0xFF78350F);
  static const Color _darkOnError = Color(0xFF7F1D1D);
  static const Color _darkOnSurface = Color(0xFFF8FAFC);
  static const Color _darkOnBackground = Color(0xFFF8FAFC);
  static const Color _darkOutline = Color(0xFF334155);
  static const Color _darkOutlineVariant = Color(0xFF475569);
  static const Color _darkShadow = Color(0xFF000000);
  static const Color _darkScrim = Color(0xFF000000);
  static const Color _darkInverseSurface = Color(0xFFF8FAFC);
  static const Color _darkInverseOnSurface = Color(0xFF0F172A);
  static const Color _darkInversePrimary = Color(0xFF2563EB);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        primary: _lightPrimary,
        primaryContainer: _lightPrimaryContainer,
        secondary: _lightSecondary,
        secondaryContainer: _lightSecondaryContainer,
        tertiary: _lightTertiary,
        tertiaryContainer: _lightTertiaryContainer,
        error: _lightError,
        errorContainer: _lightErrorContainer,
        surface: _lightSurface,
        background: _lightBackground,
        onPrimary: _lightOnPrimary,
        onSecondary: _lightOnSecondary,
        onTertiary: _lightOnTertiary,
        onError: _lightOnError,
        onSurface: _lightOnSurface,
        onBackground: _lightOnBackground,
        outline: _lightOutline,
        outlineVariant: _lightOutlineVariant,
        shadow: _lightShadow,
        scrim: _lightScrim,
        inverseSurface: _lightInverseSurface,
        inverseOnSurface: _lightInverseOnSurface,
        inversePrimary: _lightInversePrimary,
      ),
      fontFamily: 'Inter',
      scaffoldBackgroundColor: _lightBackground,
      textTheme: _textTheme(_lightOnSurface, _lightOnSurface.withOpacity(0.7)),
      appBarTheme: _appBarTheme(_lightSurface, _lightOnSurface),
      elevatedButtonTheme: _elevatedButtonTheme(_lightPrimary, _lightOnPrimary),
      filledButtonTheme: _filledButtonTheme(_lightPrimary, _lightOnPrimary),
      outlinedButtonTheme: _outlinedButtonTheme(_lightPrimary),
      textButtonTheme: _textButtonTheme(_lightPrimary),
      inputDecorationTheme: _inputDecorationTheme(_lightOutline, _lightPrimary),
      cardTheme: _cardTheme(_lightSurface, _lightOutline),
      dividerTheme: _dividerTheme(_lightOutline),
      bottomNavigationBarTheme: _bottomNavTheme(_lightSurface, _lightPrimary),
      navigationBarTheme: _navigationBarTheme(_lightSurface, _lightPrimary),
      floatingActionButtonTheme: _fabTheme(_lightPrimary, _lightOnPrimary),
      chipTheme: _chipTheme(_lightSurface, _lightOutline),
      dialogTheme: _dialogTheme(_lightSurface),
      bottomSheetTheme: _bottomSheetTheme(_lightSurface),
      snackBarTheme: _snackBarTheme(),
      progressIndicatorTheme: _progressIndicatorTheme(_lightPrimary),
      tabBarTheme: _tabBarTheme(_lightPrimary, _lightOnSurface),
      tooltipTheme: _tooltipTheme(),
      drawerTheme: _drawerTheme(_lightSurface),
      listTileTheme: _listTileTheme(_lightOnSurface),
      iconTheme: _iconTheme(_lightOnSurface),
      primaryIconTheme: _iconTheme(_lightOnPrimary),
      pageTransitionsTheme: _pageTransitionsTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: _darkPrimary,
        primaryContainer: _darkPrimaryContainer,
        secondary: _darkSecondary,
        secondaryContainer: _darkSecondaryContainer,
        tertiary: _darkTertiary,
        tertiaryContainer: _darkTertiaryContainer,
        error: _darkError,
        errorContainer: _darkErrorContainer,
        surface: _darkSurface,
        background: _darkBackground,
        onPrimary: _darkOnPrimary,
        onSecondary: _darkOnSecondary,
        onTertiary: _darkOnTertiary,
        onError: _darkOnError,
        onSurface: _darkOnSurface,
        onBackground: _darkOnBackground,
        outline: _darkOutline,
        outlineVariant: _darkOutlineVariant,
        shadow: _darkShadow,
        scrim: _darkScrim,
        inverseSurface: _darkInverseSurface,
        inverseOnSurface: _darkInverseOnSurface,
        inversePrimary: _darkInversePrimary,
      ),
      fontFamily: 'Inter',
      scaffoldBackgroundColor: _darkBackground,
      textTheme: _textTheme(_darkOnSurface, _darkOnSurface.withOpacity(0.7)),
      appBarTheme: _appBarTheme(_darkSurface, _darkOnSurface),
      elevatedButtonTheme: _elevatedButtonTheme(_darkPrimary, _darkOnPrimary),
      filledButtonTheme: _filledButtonTheme(_darkPrimary, _darkOnPrimary),
      outlinedButtonTheme: _outlinedButtonTheme(_darkPrimary),
      textButtonTheme: _textButtonTheme(_darkPrimary),
      inputDecorationTheme: _inputDecorationTheme(_darkOutline, _darkPrimary),
      cardTheme: _cardTheme(_darkSurface, _darkOutline),
      dividerTheme: _dividerTheme(_darkOutline),
      bottomNavigationBarTheme: _bottomNavTheme(_darkSurface, _darkPrimary),
      navigationBarTheme: _navigationBarTheme(_darkSurface, _darkPrimary),
      floatingActionButtonTheme: _fabTheme(_darkPrimary, _darkOnPrimary),
      chipTheme: _chipTheme(_darkSurface, _darkOutline),
      dialogTheme: _dialogTheme(_darkSurface),
      bottomSheetTheme: _bottomSheetTheme(_darkSurface),
      snackBarTheme: _snackBarTheme(),
      progressIndicatorTheme: _progressIndicatorTheme(_darkPrimary),
      tabBarTheme: _tabBarTheme(_darkPrimary, _darkOnSurface),
      tooltipTheme: _tooltipTheme(),
      drawerTheme: _drawerTheme(_darkSurface),
      listTileTheme: _listTileTheme(_darkOnSurface),
      iconTheme: _iconTheme(_darkOnSurface),
      primaryIconTheme: _iconTheme(_darkOnPrimary),
      pageTransitionsTheme: _pageTransitionsTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  static TextTheme _textTheme(Color primary, Color secondary) {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.25,
        height: 1.12,
        color: primary,
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.16,
        color: primary,
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.22,
        color: primary,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.25,
        color: primary,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.29,
        color: primary,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.33,
        color: primary,
      ),
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        height: 1.27,
        color: primary,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        height: 1.5,
        color: primary,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        height: 1.43,
        color: primary,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        height: 1.5,
        color: primary,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.43,
        color: primary,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        height: 1.33,
        color: secondary,
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        height: 1.43,
        color: primary,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        height: 1.33,
        color: primary,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        height: 1.45,
        color: secondary,
      ),
    );
  }

  static AppBarTheme _appBarTheme(Color surface, Color onSurface) {
    return AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 1,
      surfaceTintColor: Colors.transparent,
      backgroundColor: surface,
      foregroundColor: onSurface,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: onSurface,
      ),
      toolbarTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: onSurface,
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme(Color primary, Color onPrimary) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        elevation: 0,
        shadowColor: Colors.transparent,
        minimumSize: const Size(88, 48),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ).copyWith(
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return onPrimary.withOpacity(0.1);
            }
            if (states.contains(WidgetState.hovered)) {
              return onPrimary.withOpacity(0.08);
            }
            return null;
          },
        ),
      ),
    );
  }

  static FilledButtonThemeData _filledButtonTheme(Color primary, Color onPrimary) {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        minimumSize: const Size(88, 48),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonTheme(Color primary) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: primary,
        minimumSize: const Size(88, 48),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        side: BorderSide(color: primary, width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  static TextButtonThemeData _textButtonTheme(Color primary) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
        minimumSize: const Size(88, 48),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme(Color outline, Color primary) {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      hintStyle: TextStyle(
        color: outline.withOpacity(0.6),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(
        color: outline.withOpacity(0.8),
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      floatingLabelStyle: TextStyle(
        color: primary,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      errorStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.33,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: outline, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: outline, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: outline.withOpacity(0.4), width: 1),
      ),
    );
  }

  static CardTheme _cardTheme(Color surface, Color outline) {
    return CardTheme(
      elevation: 0,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      color: surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: outline, width: 1),
      ),
      margin: EdgeInsets.zero,
    );
  }

  static DividerThemeData _dividerTheme(Color outline) {
    return DividerThemeData(
      color: outline,
      thickness: 1,
      space: 1,
      indent: 0,
      endIndent: 0,
    );
  }

  static BottomNavigationBarThemeData _bottomNavTheme(Color surface, Color primary) {
    return BottomNavigationBarThemeData(
      elevation: 8,
      backgroundColor: surface,
      selectedItemColor: primary,
      unselectedItemColor: primary.withOpacity(0.6),
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
    );
  }

  static NavigationBarThemeData _navigationBarTheme(Color surface, Color primary) {
    return NavigationBarThemeData(
      elevation: 8,
      backgroundColor: surface,
      indicatorColor: primary.withOpacity(0.12),
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: primary,
            );
          }
          return TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: primary.withOpacity(0.6),
          );
        },
      ),
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: primary, size: 24);
          }
          return IconThemeData(
            color: primary.withOpacity(0.6),
            size: 24,
          );
        },
      ),
      height: 72,
    );
  }

  static FloatingActionButtonThemeData _fabTheme(Color primary, Color onPrimary) {
    return FloatingActionButtonThemeData(
      elevation: 4,
      focusElevation: 6,
      hoverElevation: 6,
      highlightElevation: 8,
      backgroundColor: primary,
      foregroundColor: onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      extendedTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
      extendedIconLabelSpacing: 8,
      extendedPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    );
  }

  static ChipThemeData _chipTheme(Color surface, Color outline) {
    return ChipThemeData(
      backgroundColor: surface,
      disabledColor: surface.withOpacity(0.5),
      selectedColor: outline.withOpacity(0.2),
      secondarySelectedColor: outline.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      labelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      secondaryLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      brightness: Brightness.light,
      elevation: 0,
      pressElevation: 0,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: outline, width: 1),
      ),
      side: BorderSide.none,
    );
  }

  static DialogTheme _dialogTheme(Color surface) {
    return DialogTheme(
      elevation: 8,
      backgroundColor: surface,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      titleTextStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
      contentTextStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  static BottomSheetThemeData _bottomSheetTheme(Color surface) {
    return BottomSheetThemeData(
      elevation: 8,
      backgroundColor: surface,
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      modalBackgroundColor: surface,
      dragHandleColor: surface.withOpacity(0.4),
      showDragHandle: true,
    );
  }

  static SnackBarThemeData _snackBarTheme() {
    return SnackBarThemeData(
      elevation: 6,
      backgroundColor: Colors.black.withOpacity(0.8),
      contentTextStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      actionTextColor: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    );
  }

  static ProgressIndicatorThemeData _progressIndicatorTheme(Color primary) {
    return ProgressIndicatorThemeData(
      color: primary,
      linearTrackColor: primary.withOpacity(0.2),
      circularTrackColor: primary.withOpacity(0.2),
    );
  }

  static TabBarTheme _tabBarTheme(Color primary, Color onSurface) {
    return TabBarTheme(
      labelColor: primary,
      unselectedLabelColor: onSurface.withOpacity(0.6),
      indicatorColor: primary,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      dividerColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(primary.withOpacity(0.1)),
      splashFactory: NoSplash.splashFactory,
    );
  }

  static TooltipThemeData _tooltipTheme() {
    return TooltipThemeData(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(8),
      ),
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.all(8),
      preferBelow: true,
      verticalOffset: 8,
      horizontalOffset: 0,
    );
  }

  static DrawerThemeData _drawerTheme(Color surface) {
    return DrawerThemeData(
      elevation: 16,
      backgroundColor: surface,
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
      ),
      scrimColor: Colors.black.withOpacity(0.5),
    );
  }

  static ListTileThemeData _listTileTheme(Color onSurface) {
    return ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: onSurface,
      ),
      subtitleTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: onSurface.withOpacity(0.6),
      ),
      leadingAndTrailingTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: onSurface.withOpacity(0.8),
      ),
      iconColor: onSurface.withOpacity(0.6),
      textColor: onSurface,
      selectedColor: onSurface,
      selectedTileColor: onSurface.withOpacity(0.08),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      horizontalTitleGap: 16,
      minVerticalPadding: 12,
    );
  }

  static IconThemeData _iconTheme(Color color) {
    return IconThemeData(
      color: color,
      size: 24,
      weight: 400,
      fill: 0,
      opticalSize: 24,
      grade: 0,
    );
  }

  static PageTransitionsTheme _pageTransitionsTheme() {
    return const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
        TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
        TargetPlatform.fuchsia: CupertinoPageTransitionsBuilder(),
      },
    );
  }
}