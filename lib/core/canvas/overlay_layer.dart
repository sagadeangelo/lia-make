import 'package:flutter/material.dart';

import 'canvas_controller.dart';

/// ============================================================
/// LIA-Make
/// Canvas Overlay Layer
/// ------------------------------------------------------------
/// Capa superior del Canvas.
///
/// Aquí viven todos los elementos temporales que se dibujan
/// sobre el Canvas.
///
/// Futuras responsabilidades:
///
/// • Selection Rectangle
/// • Drag Preview
/// • Alignment Guides
/// • Snap Indicators
/// • Drop Preview
/// • Tooltips
/// • Context Menu
/// • Debug Overlay
/// • FPS Counter
/// • Mini Map
/// ============================================================

class CanvasOverlayLayer extends StatelessWidget {
  final CanvasController controller;

  const CanvasOverlayLayer({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Stack(
        children: [
          //------------------------------------------------------
          // WATERMARK
          //------------------------------------------------------

          Positioned(
            right: 24,
            bottom: 24,
            child: Opacity(
              opacity: .20,
              child: Text(
                "LIA-Make v0.1",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),

          //------------------------------------------------------
          // VIEWPORT INFO (Debug)
          //------------------------------------------------------

          Positioned(
            left: 20,
            top: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.65),
                borderRadius: BorderRadius.circular(12),
              ),
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Viewport",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      "X: ${controller.viewport.offsetX.toStringAsFixed(1)}",
                    ),
                    Text(
                      "Y: ${controller.viewport.offsetY.toStringAsFixed(1)}",
                    ),
                    Text(
                      "Zoom: ${controller.viewport.zoom.toStringAsFixed(2)}",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}