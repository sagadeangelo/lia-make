import 'package:flutter/material.dart';

import '../../../../../design_system/colors/app_colors.dart';
import '../../../../../design_system/radius/app_radius.dart';
import '../../../../../design_system/spacing/app_spacing.dart';
import '../../../../../design_system/typography/app_typography.dart';

/// ============================================================
/// LIA-Make
/// Top Bar
///
/// Barra superior principal.
/// ============================================================

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: AppSpacing.page,
      child: Row(
        children: [
          // -----------------------------------------------------
          // Logo
          // -----------------------------------------------------

          Container(
            width: 42,
            height: 42,
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

          // -----------------------------------------------------
          // Nombre
          // -----------------------------------------------------

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LIA-Make',
                style: AppTypography.titleLarge.copyWith(
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                "Let's make your apps come true.",
                style: AppTypography.bodySmall.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),

          const Spacer(),

          // -----------------------------------------------------
          // Estado
          // -----------------------------------------------------

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: AppColors.surfaceLight,
              borderRadius: AppRadius.pill,
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.circle,
                  color: AppColors.success,
                  size: 10,
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

          const SizedBox(width: AppSpacing.xl),

          // -----------------------------------------------------
          // Configuración
          // -----------------------------------------------------

          IconButton(
            onPressed: () {},
            tooltip: 'Settings',
            icon: const Icon(
              Icons.settings_outlined,
              color: AppColors.textPrimary,
            ),
          ),

          // -----------------------------------------------------
          // Usuario
          // -----------------------------------------------------

          const CircleAvatar(
            radius: 18,
            backgroundColor: AppColors.primary,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}