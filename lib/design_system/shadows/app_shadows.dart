import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

/// ============================================================
/// LIA-Make Design System
/// App Shadows
/// ------------------------------------------------------------
/// Sombras oficiales de toda la plataforma.
///
/// Nunca utilizar BoxShadow directamente.
/// Siempre utilizar AppShadows.
/// ============================================================

abstract final class AppShadows {
  AppShadows._();

  //============================================================
  // NONE
  //============================================================

  static const List<BoxShadow> none = [];

  //============================================================
  // EXTRA SMALL
  //============================================================

  static const List<BoxShadow> xs = [
    BoxShadow(
      color: Color(0x14000000),
      blurRadius: 4,
      offset: Offset(0, 2),
    ),
  ];

  //============================================================
  // SMALL
  //============================================================

  static const List<BoxShadow> sm = [
    BoxShadow(
      color: Color(0x18000000),
      blurRadius: 8,
      offset: Offset(0, 4),
    ),
  ];

  //============================================================
  // MEDIUM
  //============================================================

  static const List<BoxShadow> md = [
    BoxShadow(
      color: Color(0x22000000),
      blurRadius: 14,
      offset: Offset(0, 8),
    ),
  ];

  //============================================================
  // LARGE
  //============================================================

  static const List<BoxShadow> lg = [
    BoxShadow(
      color: Color(0x33000000),
      blurRadius: 22,
      offset: Offset(0, 12),
    ),
  ];

  //============================================================
  // EXTRA LARGE
  //============================================================

  static const List<BoxShadow> xl = [
    BoxShadow(
      color: Color(0x44000000),
      blurRadius: 34,
      offset: Offset(0, 18),
    ),
  ];

  //============================================================
  // PANELS
  //============================================================

  static const List<BoxShadow> panel = md;

  //============================================================
  // CARDS
  //============================================================

  static const List<BoxShadow> card = sm;

  //============================================================
  // DIALOGS
  //============================================================

  static const List<BoxShadow> dialog = xl;

  //============================================================
  // FLOATING
  //============================================================

  static const List<BoxShadow> floating = [
    BoxShadow(
      color: Color(0x50000000),
      blurRadius: 30,
      offset: Offset(0, 14),
    ),
  ];

  //============================================================
  // INNER EFFECT
  //============================================================

  /// Reservado para futuras implementaciones.
  static const List<BoxShadow> inset = [];

  //============================================================
  // ELEVATED NODE
  //============================================================

  static List<BoxShadow> node({
    bool selected = false,
  }) {
    if (!selected) return card;

    return [
      const BoxShadow(
        color: Color(0x30000000),
        blurRadius: 18,
        offset: Offset(0, 8),
      ),
      BoxShadow(
        color: AppColors.primary.withValues(alpha: 0.18),
        blurRadius: 28,
        spreadRadius: 1,
      ),
    ];
  }
}