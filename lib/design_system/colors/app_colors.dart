import 'package:flutter/material.dart';

/// ============================================================
/// LIA-Make Design System
/// App Colors
/// ------------------------------------------------------------
/// Centraliza todos los colores oficiales de la plataforma.
/// Ningún widget debe utilizar colores hardcodeados.
/// ============================================================

abstract final class AppColors {
  AppColors._();

  //============================================================
  // BRAND
  //============================================================

  static const Color primary = Color(0xFF7C3AED);
  static const Color secondary = Color(0xFF38BDF8);

  //============================================================
  // BACKGROUND
  //============================================================

  static const Color background = Color(0xFF0F172A);

  static const Color surface = Color(0xFF111827);

  static const Color surfaceLight = Color(0xFF1E293B);

  static const Color surfaceDark = Color(0xFF020617);

  //============================================================
  // TEXT
  //============================================================

  static const Color textPrimary = Color(0xFFF8FAFC);

  static const Color textSecondary = Color(0xFFCBD5E1);

  static const Color textDisabled = Color(0xFF64748B);

  //============================================================
  // STATES
  //============================================================

  static const Color success = Color(0xFF22C55E);

  static const Color warning = Color(0xFFF59E0B);

  static const Color error = Color(0xFFEF4444);

  static const Color info = Color(0xFF0EA5E9);

  //============================================================
  // BORDERS
  //============================================================

  static const Color border = Color(0xFF334155);

  static const Color borderLight = Color(0xFF475569);

  //============================================================
  // GLOW
  //============================================================

  static const Color glowPrimary = Color(0xFF9D7DFF);

  static const Color glowBlue = Color(0xFF67E8F9);

  static const Color glowSuccess = Color(0xFF4ADE80);

  static const Color glowWarning = Color(0xFFFBBF24);

  static const Color glowError = Color(0xFFF87171);

  //============================================================
  // NODE COLORS
  //============================================================

  static const Color uiNode = Color(0xFF8B5CF6);

  static const Color backendNode = Color(0xFF06B6D4);

  static const Color databaseNode = Color(0xFF22C55E);

  static const Color aiNode = Color(0xFFF472B6);

  static const Color marketplaceNode = Color(0xFFF59E0B);

  static const Color automationNode = Color(0xFFEF4444);

  static const Color settingsNode = Color(0xFF64748B);

  //============================================================
  // GRID
  //============================================================

  static const Color grid = Color(0xFF1E293B);

  static const Color gridHighlight = Color(0xFF334155);

  //============================================================
  // CONNECTIONS
  //============================================================

  static const Color connection = Color(0xFF38BDF8);

  static const Color connectionActive = Color(0xFF67E8F9);

  //============================================================
  // OVERLAY
  //============================================================

  static const Color overlay = Color(0xAA000000);

  static const Color glass = Color(0x33FFFFFF);

  //============================================================
  // SHADOWS
  //============================================================

  static const Color shadow = Color(0x55000000);

  //============================================================
  // TRANSPARENT
  //============================================================

  static const Color transparent = Colors.transparent;
}