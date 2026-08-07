import 'package:flutter/material.dart';

import '../../../../../design_system/colors/app_colors.dart';
import '../../../../../design_system/radius/app_radius.dart';
import '../../../../../design_system/spacing/app_spacing.dart';
import '../../../../../design_system/typography/app_typography.dart';

/// ============================================================
/// LIA-Make
/// Bottom Console
///
/// Consola inferior del sistema.
/// En el futuro mostrará:
/// - Prompt del usuario
/// - Logs
/// - Estado de generación
/// - Errores
/// - Exportación
/// ============================================================

class BottomConsole extends StatelessWidget {
  const BottomConsole({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.all(AppSpacing.lg),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //----------------------------------------------------
          // Header
          //----------------------------------------------------

          Row(
            children: [
              const Icon(
                Icons.terminal,
                color: AppColors.primary,
              ),

              const SizedBox(width: AppSpacing.sm),

              Text(
                "Prompt Console",
                style: AppTypography.titleMedium.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),

              const Spacer(),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.surfaceLight,
                  borderRadius: AppRadius.pill,
                ),
                child: Text(
                  "Ready",
                  style: AppTypography.labelSmall.copyWith(
                    color: AppColors.success,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.lg),

          //----------------------------------------------------
          // Prompt
          //----------------------------------------------------

          Expanded(
            child: Container(
              width: double.infinity,

              padding: const EdgeInsets.all(AppSpacing.lg),

              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: AppRadius.lgRadius,
                border: Border.all(
                  color: AppColors.border,
                ),
              ),

              child: Text(
                "Describe the application you want to build...\n\n"
                "Example:\n"
                "\"Create a restaurant reservation app with login, "
                "payments and push notifications.\"",
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}