import 'package:flutter/material.dart';

import 'canvas_controller.dart';

/// ============================================================
/// LIA-Make
/// Node Layer
/// ------------------------------------------------------------
/// Capa encargada de renderizar todos los nodos del Canvas.
///
/// En futuras versiones:
///
/// • Renderizado de nodos
/// • Drag & Drop
/// • Selección
/// • Resize
/// • Multi selección
/// • Hover
/// • Animaciones
/// ============================================================

class NodeLayer extends StatelessWidget {
  final CanvasController controller;

  const NodeLayer({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Stack(
        children: [
          //----------------------------------------------------
          // Placeholder
          //----------------------------------------------------

          Positioned(
            left: 220,
            top: 160,
            child: _DemoNode(
              title: "Home Screen",
              color: Colors.blue,
            ),
          ),

          Positioned(
            left: 520,
            top: 320,
            child: _DemoNode(
              title: "Login API",
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

/// ============================================================
/// Demo Node
/// ------------------------------------------------------------
/// Nodo temporal.
/// Será reemplazado por NodeWidget.
/// ============================================================

class _DemoNode extends StatelessWidget {
  final String title;
  final Color color;

  const _DemoNode({
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: color,
          width: 2,
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 12,
            offset: Offset(0, 4),
            color: Colors.black26,
          ),
        ],
      ),

      child: Row(
        children: [
          CircleAvatar(
            radius: 14,
            backgroundColor: color,
            child: const Icon(
              Icons.circle,
              color: Colors.white,
              size: 10,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}