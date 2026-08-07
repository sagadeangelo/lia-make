import 'package:flutter/material.dart';

import 'canvas_controller.dart';

/// ============================================================
/// LIA-Make
/// Connection Layer
/// ------------------------------------------------------------
/// Renderiza todas las conexiones entre nodos.
///
/// Esta primera versión utiliza coordenadas del mundo (World
/// Space) y las transforma utilizando el Viewport.
///
/// Más adelante esta capa dibujará conexiones reales obtenidas
/// desde el CanvasState.
/// ============================================================

class NodeConnectionLayer extends StatelessWidget {
  final CanvasController controller;

  const NodeConnectionLayer({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: CustomPaint(
        painter: _ConnectionPainter(controller),
        size: Size.infinite,
      ),
    );
  }
}

class _ConnectionPainter extends CustomPainter {
  final CanvasController controller;

  const _ConnectionPainter(this.controller);

  @override
  void paint(Canvas canvas, Size size) {
    final viewport = controller.viewport;

    //----------------------------------------------------------
    // Coordenadas del mundo
    //----------------------------------------------------------

    const Offset worldStart = Offset(440, 203);
    const Offset worldEnd = Offset(620, 423);

    //----------------------------------------------------------
    // Conversión Mundo -> Pantalla
    //----------------------------------------------------------

    final Offset start = Offset(
      worldStart.dx + viewport.offsetX,
      worldStart.dy + viewport.offsetY,
    );

    final Offset end = Offset(
      worldEnd.dx + viewport.offsetX,
      worldEnd.dy + viewport.offsetY,
    );

    //----------------------------------------------------------
    // Pintura
    //----------------------------------------------------------

    final paint = Paint()
      ..color = const Color(0xFF6C63FF)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path()
      ..moveTo(start.dx, start.dy)
      ..cubicTo(
        start.dx + 140,
        start.dy,
        end.dx - 140,
        end.dy,
        end.dx,
        end.dy,
      );

    canvas.drawPath(path, paint);

    //----------------------------------------------------------
    // Puntos de conexión
    //----------------------------------------------------------

    final pointPaint = Paint()
      ..color = const Color(0xFF6C63FF)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(start, 6, pointPaint);
    canvas.drawCircle(end, 6, pointPaint);
  }

  @override
  bool shouldRepaint(covariant _ConnectionPainter oldDelegate) {
    return oldDelegate.controller.viewport != controller.viewport;
  }
}