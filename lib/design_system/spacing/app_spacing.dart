import 'package:flutter/widgets.dart';

/// ============================================================
/// LIA-Make Design System
/// App Spacing
/// ------------------------------------------------------------
/// Espaciados oficiales de toda la plataforma.
///
/// Nunca utilizar números mágicos.
/// Siempre utilizar AppSpacing.
/// ============================================================

abstract final class AppSpacing {
  AppSpacing._();

  //============================================================
  // BASE SCALE
  //============================================================

  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;

  static const double xxxl = 32.0;
  static const double huge = 40.0;
  static const double giant = 48.0;
  static const double massive = 64.0;

  //============================================================
  // PAGE PADDING
  //============================================================

  static const EdgeInsets page =
      EdgeInsets.symmetric(horizontal: 24, vertical: 20);

  static const EdgeInsets pageCompact =
      EdgeInsets.symmetric(horizontal: 16, vertical: 16);

  //============================================================
  // CARD PADDING
  //============================================================

  static const EdgeInsets card = EdgeInsets.all(16);

  static const EdgeInsets cardLarge = EdgeInsets.all(24);

  //============================================================
  // PANEL PADDING
  //============================================================

  static const EdgeInsets panel = EdgeInsets.all(20);

  //============================================================
  // INPUT PADDING
  //============================================================

  static const EdgeInsets input =
      EdgeInsets.symmetric(horizontal: 16, vertical: 14);

  //============================================================
  // BUTTON PADDING
  //============================================================

  static const EdgeInsets button =
      EdgeInsets.symmetric(horizontal: 20, vertical: 14);

  static const EdgeInsets buttonSmall =
      EdgeInsets.symmetric(horizontal: 14, vertical: 10);

  //============================================================
  // LIST ITEM
  //============================================================

  static const EdgeInsets listItem =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);

  //============================================================
  // DIALOG
  //============================================================

  static const EdgeInsets dialog = EdgeInsets.all(24);

  //============================================================
  // ZERO
  //============================================================

  static const EdgeInsets zero = EdgeInsets.zero;
}