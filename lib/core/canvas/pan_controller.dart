import 'package:flutter/material.dart' hide Viewport;

import 'viewport.dart';

/// ============================================================
/// LIA-Make
/// Pan Controller
/// ------------------------------------------------------------
/// Controla el desplazamiento (Pan) del Canvas.
///
/// Responsabilidades:
/// • Arrastrar el Canvas
/// • Centrar el Viewport
/// • Limitar desplazamientos (futuro)
///
/// Futuras características:
/// • Inercia
/// • Smooth Pan
/// • Space + Drag
/// • Middle Mouse Drag
/// • Touch Gestures
/// ============================================================

class PanController {
  const PanController();

  /// ----------------------------------------------------------
  /// Mover el viewport por un desplazamiento.
  /// ----------------------------------------------------------

  Viewport pan({
    required Viewport viewport,
    required Offset delta,
  }) {
    return viewport.translate(
      dx: delta.dx,
      dy: delta.dy,
    );
  }

  /// ----------------------------------------------------------
  /// Mover usando valores numéricos.
  /// ----------------------------------------------------------

  Viewport move({
    required Viewport viewport,
    required double dx,
    required double dy,
  }) {
    return viewport.translate(
      dx: dx,
      dy: dy,
    );
  }

  /// ----------------------------------------------------------
  /// Centrar el mundo.
  /// ----------------------------------------------------------

  Viewport center(Viewport viewport) {
    return viewport.copyWith(
      offsetX: 0,
      offsetY: 0,
    );
  }

  /// ----------------------------------------------------------
  /// Posicionar el viewport en coordenadas específicas.
  /// ----------------------------------------------------------

  Viewport moveTo({
    required Viewport viewport,
    required double x,
    required double y,
  }) {
    return viewport.copyWith(
      offsetX: x,
      offsetY: y,
    );
  }

  /// ----------------------------------------------------------
  /// Reset completo.
  /// ----------------------------------------------------------

  Viewport reset(Viewport viewport) {
    return viewport.reset();
  }
}