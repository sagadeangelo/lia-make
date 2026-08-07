import 'package:flutter/material.dart';

import '../../../../../design_system/colors/app_colors.dart';
import '../../../../../design_system/radius/app_radius.dart';
import '../../../../../design_system/spacing/app_spacing.dart';
import '../../../../../design_system/typography/app_typography.dart';

/// ============================================================
/// LIA-Make
/// Left Panel
///
/// Toolbox de componentes.
/// Aquí vivirán todos los nodos del sistema.
/// ============================================================

class LeftPanel extends StatelessWidget {
  const LeftPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.all(AppSpacing.lg),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //------------------------------------------------------
          // Título
          //------------------------------------------------------

          Text(
            "Components",
            style: AppTypography.titleLarge.copyWith(
              color: AppColors.textPrimary,
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          Text(
            "Drag items to the canvas",
            style: AppTypography.bodySmall.copyWith(
              color: AppColors.textSecondary,
            ),
          ),

          const SizedBox(height: AppSpacing.xxl),

          //------------------------------------------------------
          // Buscador
          //------------------------------------------------------

          TextField(
            decoration: InputDecoration(
              hintText: "Search...",
              prefixIcon: const Icon(Icons.search),
              filled: true,
            ),
          ),

          const SizedBox(height: AppSpacing.xxl),

          //------------------------------------------------------
          // Lista
          //------------------------------------------------------

          Expanded(
            child: ListView(
              children: const [

                _CategoryTitle("UI"),

                _NodeTile(
                  icon: Icons.phone_android,
                  title: "Screen",
                ),

                _NodeTile(
                  icon: Icons.smart_button,
                  title: "Button",
                ),

                _NodeTile(
                  icon: Icons.text_fields,
                  title: "Text",
                ),

                _NodeTile(
                  icon: Icons.image,
                  title: "Image",
                ),

                SizedBox(height: 24),

                _CategoryTitle("Backend"),

                _NodeTile(
                  icon: Icons.storage,
                  title: "Database",
                ),

                _NodeTile(
                  icon: Icons.api,
                  title: "API",
                ),

                _NodeTile(
                  icon: Icons.cloud,
                  title: "Cloud Function",
                ),

                SizedBox(height: 24),

                _CategoryTitle("Artificial Intelligence"),

                _NodeTile(
                  icon: Icons.psychology,
                  title: "AI Agent",
                ),

                _NodeTile(
                  icon: Icons.chat,
                  title: "Chat",
                ),

                _NodeTile(
                  icon: Icons.auto_awesome,
                  title: "Prompt",
                ),

                SizedBox(height: 24),

                _CategoryTitle("Marketplace"),

                _NodeTile(
                  icon: Icons.shopping_cart,
                  title: "Store",
                ),

                _NodeTile(
                  icon: Icons.attach_money,
                  title: "Payments",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CategoryTitle extends StatelessWidget {
  final String title;

  const _CategoryTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: AppTypography.labelLarge.copyWith(
          color: AppColors.primary,
        ),
      ),
    );
  }
}

class _NodeTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const _NodeTile({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),

      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: AppRadius.mdRadius,
      ),

      child: ListTile(
        leading: Icon(
          icon,
          color: AppColors.secondary,
        ),
        title: Text(
          title,
          style: AppTypography.bodyMedium.copyWith(
            color: AppColors.textPrimary,
          ),
        ),
        trailing: const Icon(
          Icons.drag_indicator,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}