import 'package:flutter/material.dart';

import '../models/node_style.dart';

/// ============================================================
/// LIA-Make
/// Node Body
/// ------------------------------------------------------------
/// Área central del nodo.
///
/// Cada tipo de nodo podrá colocar aquí
/// cualquier widget.
///
/// Screen
/// API
/// AI
/// Database
/// etc.
/// ============================================================

class NodeBody extends StatelessWidget {
  final Widget? child;

  final NodeStyle style;

  const NodeBody({
    super.key,
    this.child,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,

        margin: const EdgeInsets.symmetric(
          vertical: 12,
        ),

        padding: const EdgeInsets.all(12),

        decoration: BoxDecoration(
          color: style.backgroundColor.withValues(
            alpha: .18,
          ),
          borderRadius: BorderRadius.circular(12),
        ),

        child: child ??
            Center(
              child: Text(
                "Node Content",
                style: TextStyle(
                  color: style.textColor.withValues(
                    alpha: .60,
                  ),
                  fontSize: 13,
                ),
              ),
            ),
      ),
    );
  }
}