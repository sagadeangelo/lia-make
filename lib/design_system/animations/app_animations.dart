import 'package:flutter/animation.dart';

/// ============================================================
/// LIA-Make Design System
/// App Animations
/// ------------------------------------------------------------
/// Duraciones y curvas oficiales.
///
/// Nunca utilizar Duration() o Curves directamente.
/// Siempre utilizar AppAnimations.
/// ============================================================

abstract final class AppAnimations {
  AppAnimations._();

  //============================================================
  // DURATIONS
  //============================================================

  static const Duration instant = Duration(milliseconds: 80);

  static const Duration fast = Duration(milliseconds: 150);

  static const Duration normal = Duration(milliseconds: 200);

  static const Duration medium = Duration(milliseconds: 300);

  static const Duration slow = Duration(milliseconds: 500);

  static const Duration verySlow = Duration(milliseconds: 800);

  //============================================================
  // HOVER
  //============================================================

  static const Duration hover = fast;

  //============================================================
  // BUTTON
  //============================================================

  static const Duration button = fast;

  //============================================================
  // SELECTION
  //============================================================

  static const Duration selection = normal;

  //============================================================
  // DIALOG
  //============================================================

  static const Duration dialog = medium;

  //============================================================
  // PAGE
  //============================================================

  static const Duration page = medium;

  //============================================================
  // DRAG
  //============================================================

  static const Duration drag = normal;

  //============================================================
  // GLOW
  //============================================================

  static const Duration glow = medium;

  //============================================================
  // TOOLTIP
  //============================================================

  static const Duration tooltip = fast;

  //============================================================
  // LOADING
  //============================================================

  static const Duration loading = slow;

  //============================================================
  // AVATAR
  //============================================================

  static const Duration breathing = Duration(seconds: 4);

  static const Duration blinking = Duration(milliseconds: 180);

  static const Duration thinking = Duration(milliseconds: 900);

  static const Duration celebration = Duration(milliseconds: 700);

  //============================================================
  // CURVES
  //============================================================

  static const Curve defaultCurve = Curves.easeOutCubic;

  static const Curve emphasized = Curves.easeInOutCubic;

  static const Curve enter = Curves.easeOut;

  static const Curve exit = Curves.easeIn;

  static const Curve bounce = Curves.easeOutBack;

  static const Curve dragCurve = Curves.easeOutQuart;

  static const Curve panel = Curves.easeInOutCubic;

  static const Curve pageTransition = Curves.easeInOutCubicEmphasized;
}