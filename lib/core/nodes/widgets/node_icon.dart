import 'package:flutter/material.dart';

/// ============================================================
/// LIA-Make
/// Node Icon
/// ------------------------------------------------------------
/// Icono reutilizable para cualquier nodo.
///
/// Futuro:
///
/// • Glow
/// • Halo
/// • Pulse
/// • Badge
/// • Activity
/// • AI Status
/// ============================================================

class NodeIcon extends StatelessWidget {
  final IconData icon;

  final Color color;

  final double size;

  final bool selected;

  final bool glow;

  const NodeIcon({
    super.key,
    required this.icon,
    required this.color,
    this.size = 34,
    this.selected = false,
    this.glow = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),

      width: size + 16,
      height: size + 16,

      decoration: BoxDecoration(
        color: color.withValues(alpha: .12),
        borderRadius: BorderRadius.circular(14),

        boxShadow: [
          if (glow || selected)
            BoxShadow(
              color: color.withValues(alpha: .35),
              blurRadius: 18,
              spreadRadius: 2,
            ),
        ],
      ),

      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
}