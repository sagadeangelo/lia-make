import 'package:flutter/material.dart';

import '../../../../../design_system/colors/app_colors.dart';
import '../../../../../design_system/radius/app_radius.dart';
import '../../../../../design_system/spacing/app_spacing.dart';
import '../../../../../design_system/typography/app_typography.dart';

/// ============================================================
/// LIA-Make
/// Right Panel
/// ============================================================

class RightPanel extends StatelessWidget {
  const RightPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        children: [
          //------------------------------------------------------
          // HEADER
          //------------------------------------------------------

          Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundColor: AppColors.primary,
                child: Icon(
                  Icons.auto_awesome,
                  color: Colors.white,
                ),
              ),

              const SizedBox(width: AppSpacing.md),

              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LIA",
                      style: AppTypography.titleLarge.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      "AI Companion",
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSpacing.lg),

          //------------------------------------------------------
          // AI CARD
          //------------------------------------------------------

          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.lg),

              decoration: BoxDecoration(
                color: AppColors.surfaceLight,
                borderRadius: AppRadius.lgRadius,
              ),

              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.smart_toy_outlined,
                      size: 56,
                      color: AppColors.primary,
                    ),

                    const SizedBox(height: AppSpacing.md),

                    Text(
                      "Welcome!",
                      style: AppTypography.headlineSmall.copyWith(
                        color: AppColors.textPrimary,
                      ),
                    ),

                    const SizedBox(height: AppSpacing.sm),

                    Text(
                      "I'm here to help you build your application.\n\n"
                      "Describe your idea and I'll guide you step by step.",
                      textAlign: TextAlign.center,
                      style: AppTypography.bodyMedium.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: AppSpacing.lg),

          //------------------------------------------------------
          // STATUS
          //------------------------------------------------------

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppSpacing.md),

            decoration: BoxDecoration(
              color: AppColors.surfaceLight,
              borderRadius: AppRadius.mdRadius,
            ),

            child: Row(
              children: [
                const Icon(
                  Icons.circle,
                  color: AppColors.success,
                  size: 10,
                ),

                const SizedBox(width: 8),

                Expanded(
                  child: Text(
                    "LIA is ready",
                    style: AppTypography.labelMedium.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}