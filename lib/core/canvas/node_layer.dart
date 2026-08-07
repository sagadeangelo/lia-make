import 'package:flutter/material.dart';

import 'canvas_controller.dart';

/// ============================================================
/// LIA-Make
/// Node Layer
/// ------------------------------------------------------------
/// Renderiza todos los nodos del Canvas.
///
/// En esta primera versión los nodos utilizan coordenadas del
/// mundo (World Space) y son transformados a coordenadas de
/// pantalla mediante el Viewport.
/// ============================================================

class NodeLayer extends StatelessWidget {
  final CanvasController controller;

  const NodeLayer({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final viewport = controller.viewport;

    return IgnorePointer(
      child: Stack(
        children: [
          //----------------------------------------------------
          // HOME SCREEN
          //----------------------------------------------------

          _WorldNode(
            worldX: 220,
            worldY: 160,
            viewportOffsetX: viewport.offsetX,
            viewportOffsetY: viewport.offsetY,
            child: const _DemoNode(
              title: "Home Screen",
              color: Colors.blue,
            ),
          ),

          //----------------------------------------------------
          // LOGIN API
          //----------------------------------------------------

          _WorldNode(
            worldX: 620,
            worldY: 380,
            viewportOffsetX: viewport.offsetX,
            viewportOffsetY: viewport.offsetY,
            child: const _DemoNode(
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
/// WORLD NODE
///
/// Convierte coordenadas del mundo a coordenadas de pantalla.
/// ============================================================

class _WorldNode extends StatelessWidget {
  final double worldX;
  final double worldY;

  final double viewportOffsetX;
  final double viewportOffsetY;

  final Widget child;

  const _WorldNode({
    required this.worldX,
    required this.worldY,
    required this.viewportOffsetX,
    required this.viewportOffsetY,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: worldX + viewportOffsetX,
      top: worldY + viewportOffsetY,
      child: child,
    );
  }
}

/// ============================================================
/// DEMO NODE
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
      width: 220,
      height: 86,
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF252525),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: color,
          width: 2,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 18,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: color,
            child: const Icon(
              Icons.circle,
              color: Colors.white,
              size: 12,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}