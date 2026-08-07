import 'package:flutter/material.dart' hide Viewport;

import 'viewport.dart';

/// ============================================================
/// LIA-Make
/// Infinite Grid
/// ------------------------------------------------------------
/// Dibuja un grid infinito utilizando el Viewport.
///
/// El grid se desplaza y escala junto con la cámara.
/// ============================================================

class InfiniteGrid extends StatelessWidget {
  final Viewport viewport;

  const InfiniteGrid({
    super.key,
    required this.viewport,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: CustomPaint(
        painter: InfiniteGridPainter(viewport),
        size: Size.infinite,
      ),
    );
  }
}

/// ============================================================
/// Painter
/// ============================================================

class InfiniteGridPainter extends CustomPainter {
  final Viewport viewport;

  const InfiniteGridPainter(this.viewport);

  @override
  void paint(Canvas canvas, Size size) {
    const double gridSize = 40;

    final double spacing = gridSize * viewport.zoom;

    final Paint minorPaint = Paint()
      ..color = const Color(0xFF2A2A2A)
      ..strokeWidth = 1;

    final Paint majorPaint = Paint()
      ..color = const Color(0xFF353535)
      ..strokeWidth = 1.4;

    final double startX =
        viewport.offsetX % spacing;

    final double startY =
        viewport.offsetY % spacing;

    //----------------------------------------------------------
    // Vertical Lines
    //----------------------------------------------------------

    int column = 0;

    for (double x = startX; x <= size.width; x += spacing) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, size.height),
        column % 5 == 0 ? majorPaint : minorPaint,
      );

      column++;
    }

    //----------------------------------------------------------
    // Horizontal Lines
    //----------------------------------------------------------

    int row = 0;

    for (double y = startY; y <= size.height; y += spacing) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        row % 5 == 0 ? majorPaint : minorPaint,
      );

      row++;
    }

    //----------------------------------------------------------
    // Origin
    //----------------------------------------------------------

    final Paint originPaint = Paint()
      ..color = Colors.blueAccent
      ..style = PaintingStyle.fill;

    final Offset origin = Offset(
      viewport.offsetX,
      viewport.offsetY,
    );

    canvas.drawCircle(
      origin,
      4,
      originPaint,
    );
  }

  @override
  bool shouldRepaint(covariant InfiniteGridPainter oldDelegate) {
    return oldDelegate.viewport != viewport;
  }
}