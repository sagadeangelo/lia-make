import 'package:flutter/material.dart';

import 'canvas_controller.dart';

/// ============================================================
/// LIA-Make
/// Connection Layer
/// ------------------------------------------------------------
/// Capa encargada de dibujar todas las conexiones entre nodos.
///
/// Futuro:
///
/// • Curvas Bézier
/// • Conexiones animadas
/// • Preview mientras se arrastra
/// • Selección
/// • Highlight
/// • Estados (Activo / Error / Ejecutando)
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
    final paint = Paint()
      ..color = const Color(0xFF6C63FF)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    //----------------------------------------------------------
    // DEMO CONNECTION
    //----------------------------------------------------------

    const Offset start = Offset(400, 185);
    const Offset end = Offset(520, 345);

    final path = Path();

    path.moveTo(start.dx, start.dy);

    path.cubicTo(
      start.dx + 120,
      start.dy,
      end.dx - 120,
      end.dy,
      end.dx,
      end.dy,
    );

    canvas.drawPath(path, paint);

    //----------------------------------------------------------
    // End Points
    //----------------------------------------------------------

    final pointPaint = Paint()
      ..color = const Color(0xFF6C63FF)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(start, 5, pointPaint);
    canvas.drawCircle(end, 5, pointPaint);
  }

  @override
  bool shouldRepaint(covariant _ConnectionPainter oldDelegate) {
    return true;
  }
}