import 'package:flutter/material.dart';

import '../../../../../design_system/colors/app_colors.dart';
import '../../../../../design_system/radius/app_radius.dart';
import '../../../../../design_system/spacing/app_spacing.dart';
import '../../../../../design_system/typography/app_typography.dart';

/// ============================================================
/// LIA-Make
/// Top Bar
/// ============================================================

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(
          bottom: BorderSide(
            color: AppColors.border,
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.xl,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //======================================================
          // Logo
          //======================================================

          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: AppRadius.mdRadius,
            ),
            child: const Icon(
              Icons.auto_awesome,
              color: Colors.white,
            ),
          ),

          const SizedBox(width: AppSpacing.lg),

          //======================================================
          // Título
          //======================================================

          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LIA-Make',
                  style: AppTypography.titleLarge.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  "Let's make your apps come true.",
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),

          //======================================================
          // Estado
          //======================================================

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: AppColors.surfaceLight,
              borderRadius: AppRadius.pill,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.circle,
                  size: 10,
                  color: AppColors.success,
                ),

                const SizedBox(width: 8),

                Text(
                  'Ready',
                  style: AppTypography.labelMedium.copyWith(
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: AppSpacing.lg),

          //======================================================
          // Configuración
          //======================================================

          IconButton(
            tooltip: 'Settings',
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: AppColors.textPrimary,
            ),
          ),

          const SizedBox(width: AppSpacing.sm),

          //======================================================
          // Usuario
          //======================================================

          const CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.primary,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}