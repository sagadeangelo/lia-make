import 'package:flutter/material.dart';

import 'canvas_controller.dart';
import 'connection_layer.dart';
import 'infinite_grid.dart';
import 'node_layer.dart';
import 'overlay_layer.dart';

/// ============================================================
/// LIA-Make
/// Infinite Canvas
/// ------------------------------------------------------------
/// Motor principal del Canvas.
///
/// Todas las capas del editor viven aquí.
///
/// Orden de render:
///
/// 1. Grid
/// 2. Connections
/// 3. Nodes
/// 4. Overlay
///
/// Futuro:
///
/// • Minimap
/// • Selection
/// • Guides
/// • Alignment
/// • Drop Preview
/// ============================================================

class InfiniteCanvas extends StatefulWidget {
  final CanvasController controller;

  const InfiniteCanvas({
    super.key,
    required this.controller,
  });

  @override
  State<InfiniteCanvas> createState() => _InfiniteCanvasState();
}

class _InfiniteCanvasState extends State<InfiniteCanvas> {
  @override
  void initState() {
    super.initState();

    widget.controller.addListener(_onCanvasChanged);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onCanvasChanged);
    super.dispose();
  }

  void _onCanvasChanged() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,

        onPanUpdate: (details) {
          widget.controller.moveBy(
            dx: details.delta.dx,
            dy: details.delta.dy,
          );
        },

        child: ClipRect(
          child: Stack(
            fit: StackFit.expand,
            children: [

              //--------------------------------------------------
              // GRID
              //--------------------------------------------------

              InfiniteGrid(
                viewport: widget.controller.viewport,
              ),

              //--------------------------------------------------
              // CONNECTIONS
              //--------------------------------------------------

              NodeConnectionLayer(
                controller: widget.controller,
              ),

              //--------------------------------------------------
              // NODES
              //--------------------------------------------------

              NodeLayer(
                controller: widget.controller,
              ),

              //--------------------------------------------------
              // OVERLAY
              //--------------------------------------------------

              CanvasOverlayLayer(
                controller: widget.controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}