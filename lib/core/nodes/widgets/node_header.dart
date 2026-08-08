import 'package:flutter/material.dart';

import '../models/node_definition.dart';
import '../models/node_style.dart';

/// ============================================================
/// LIA-Make
/// Node Header
/// ------------------------------------------------------------
/// Cabecera reutilizable para todos los nodos.
/// ============================================================

class NodeHeader extends StatelessWidget {
  final NodeDefinition definition;

  final NodeStyle style;

  final String title;

  final bool selected;

  const NodeHeader({
    super.key,
    required this.definition,
    required this.style,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //------------------------------------------------------
        // ICON
        //------------------------------------------------------

        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: style.borderColor.withValues(alpha: .15),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            definition.icon,
            color: style.borderColor,
            size: style.iconSize,
          ),
        ),

        const SizedBox(width: 14),

        //------------------------------------------------------
        // TITLE
        //------------------------------------------------------

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: style.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 2),

              Text(
                definition.category.name.toUpperCase(),
                style: TextStyle(
                  color: style.textColor.withValues(alpha: .55),
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        //------------------------------------------------------
        // STATUS
        //------------------------------------------------------

        AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selected
                ? Colors.greenAccent
                : style.borderColor,
            boxShadow: [
              BoxShadow(
                color: selected
                    ? Colors.greenAccent.withValues(alpha: .5)
                    : style.borderColor.withValues(alpha: .35),
                blurRadius: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}