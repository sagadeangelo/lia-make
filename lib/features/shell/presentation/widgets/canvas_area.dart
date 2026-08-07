import 'package:flutter/material.dart';

import '../../../../../design_system/colors/app_colors.dart';
import '../../../../../design_system/radius/app_radius.dart';
import '../../../../../design_system/spacing/app_spacing.dart';
import '../../../../../design_system/typography/app_typography.dart';

/// ============================================================
/// LIA-Make
/// Canvas Area
///
/// Futuro Infinite Canvas.
/// ============================================================

class CanvasArea extends StatelessWidget {
  const CanvasArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,

      child: Stack(
        children: [

          //------------------------------------------------------
          // GRID
          //------------------------------------------------------

          const Positioned.fill(
            child: _CanvasGrid(),
          ),

          //------------------------------------------------------
          // CONTENIDO
          //------------------------------------------------------

          Center(
            child: Container(
              width: 520,
              padding: const EdgeInsets.all(AppSpacing.massive),

              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: AppRadius.xlRadius,
                border: Border.all(
                  color: AppColors.border,
                ),
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Icon(
                    Icons.dashboard_customize,
                    color: AppColors.primary,
                    size: 70,
                  ),

                  const SizedBox(height: AppSpacing.xl),

                  Text(
                    "Infinite Canvas",
                    style: AppTypography.headlineSmall.copyWith(
                      color: AppColors.textPrimary,
                    ),
                  ),

                  const SizedBox(height: AppSpacing.md),

                  Text(
                    "Drag nodes here to build your application.",
                    textAlign: TextAlign.center,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),

                  const SizedBox(height: AppSpacing.xxxl),

                  FilledButton.icon(
                    onPressed: () {},

                    icon: const Icon(Icons.add),

                    label: const Text(
                      "Create First Node",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ============================================================
/// Canvas Grid
/// ============================================================

class _CanvasGrid extends StatelessWidget {
  const _CanvasGrid();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _GridPainter(),
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const double spacing = 24;

    final paint = Paint()
      ..color = AppColors.grid
      ..strokeWidth = .6;

    for (double x = 0; x < size.width; x += spacing) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, size.height),
        paint,
      );
    }

    for (double y = 0; y < size.height; y += spacing) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}