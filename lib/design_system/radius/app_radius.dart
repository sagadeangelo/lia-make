import 'package:flutter/widgets.dart';

/// ============================================================
/// LIA-Make Design System
/// App Radius
/// ------------------------------------------------------------
/// Radios oficiales para toda la aplicación.
///
/// Nunca utilizar BorderRadius.circular().
/// Siempre utilizar AppRadius.
/// ============================================================

abstract final class AppRadius {
  AppRadius._();

  //============================================================
  // VALUES
  //============================================================

  static const double none = 0;

  static const double xs = 4;

  static const double sm = 8;

  static const double md = 12;

  static const double lg = 16;

  static const double xl = 20;

  static const double xxl = 24;

  static const double round = 999;

  //============================================================
  // BORDER RADIUS
  //============================================================

  static const BorderRadius noneRadius =
      BorderRadius.all(Radius.circular(none));

  static const BorderRadius xsRadius =
      BorderRadius.all(Radius.circular(xs));

  static const BorderRadius smRadius =
      BorderRadius.all(Radius.circular(sm));

  static const BorderRadius mdRadius =
      BorderRadius.all(Radius.circular(md));

  static const BorderRadius lgRadius =
      BorderRadius.all(Radius.circular(lg));

  static const BorderRadius xlRadius =
      BorderRadius.all(Radius.circular(xl));

  static const BorderRadius xxlRadius =
      BorderRadius.all(Radius.circular(xxl));

  static const BorderRadius pill =
      BorderRadius.all(Radius.circular(round));

  //============================================================
  // PRESETS
  //============================================================

  /// Tarjetas principales
  static const BorderRadius card = lgRadius;

  /// Panel izquierdo y derecho
  static const BorderRadius panel = xlRadius;

  /// Dialogs
  static const BorderRadius dialog = xlRadius;

  /// Botones
  static const BorderRadius button = lgRadius;

  /// Inputs
  static const BorderRadius input = mdRadius;

  /// Chips
  static const BorderRadius chip = pill;
}