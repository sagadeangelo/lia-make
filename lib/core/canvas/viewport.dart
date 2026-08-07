import 'package:flutter/foundation.dart';

/// ============================================================
/// LIA-Make
/// Viewport
/// ------------------------------------------------------------
/// Representa la cámara del Canvas.
///
/// No mueve los nodos.
/// Mueve la vista sobre el mundo.
///
/// En el futuro soportará:
/// • Zoom
/// • Pan
/// • Conversión Mundo <-> Pantalla
/// • Centrado
/// • Frame Selection
/// ============================================================

@immutable
class Viewport {
  /// Posición del mundo.
  final double offsetX;
  final double offsetY;

  /// Nivel de zoom.
  final double zoom;

  const Viewport({
    required this.offsetX,
    required this.offsetY,
    required this.zoom,
  });

  /// ----------------------------------------------------------
  /// Estado inicial
  /// ----------------------------------------------------------

  const Viewport.initial()
      : offsetX = 0,
        offsetY = 0,
        zoom = 1.0;

  /// ----------------------------------------------------------
  /// CopyWith
  /// ----------------------------------------------------------

  Viewport copyWith({
    double? offsetX,
    double? offsetY,
    double? zoom,
  }) {
    return Viewport(
      offsetX: offsetX ?? this.offsetX,
      offsetY: offsetY ?? this.offsetY,
      zoom: zoom ?? this.zoom,
    );
  }

  /// ----------------------------------------------------------
  /// Traducción
  /// ----------------------------------------------------------

  Viewport translate({
    required double dx,
    required double dy,
  }) {
    return Viewport(
      offsetX: offsetX + dx,
      offsetY: offsetY + dy,
      zoom: zoom,
    );
  }

  /// ----------------------------------------------------------
  /// Escalado
  /// ----------------------------------------------------------

  Viewport scale(double value) {
    return Viewport(
      offsetX: offsetX,
      offsetY: offsetY,
      zoom: value.clamp(0.25, 4.0),
    );
  }

  /// ----------------------------------------------------------
  /// Reset
  /// ----------------------------------------------------------

  Viewport reset() {
    return const Viewport.initial();
  }

  /// ----------------------------------------------------------
  /// Debug
  /// ----------------------------------------------------------

  @override
  String toString() {
    return 'Viewport('
        'offsetX: $offsetX, '
        'offsetY: $offsetY, '
        'zoom: $zoom'
        ')';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Viewport &&
            runtimeType == other.runtimeType &&
            offsetX == other.offsetX &&
            offsetY == other.offsetY &&
            zoom == other.zoom;
  }

  @override
  int get hashCode => Object.hash(
        offsetX,
        offsetY,
        zoom,
      );
}