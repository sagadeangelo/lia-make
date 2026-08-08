import 'package:flutter/foundation.dart';

/// ============================================================
/// LIA-Make
/// Canvas Viewport
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
class CanvasViewport {
  /// Posición del mundo.
  final double offsetX;

  final double offsetY;

  /// Nivel de zoom.
  final double zoom;

  const CanvasViewport({
    required this.offsetX,
    required this.offsetY,
    required this.zoom,
  });

  ///----------------------------------------------------------
  /// Estado inicial
  ///----------------------------------------------------------

  const CanvasViewport.initial()
      : offsetX = 0,
        offsetY = 0,
        zoom = 1.0;

  ///----------------------------------------------------------
  /// CopyWith
  ///----------------------------------------------------------

  CanvasViewport copyWith({
    double? offsetX,
    double? offsetY,
    double? zoom,
  }) {
    return CanvasViewport(
      offsetX: offsetX ?? this.offsetX,
      offsetY: offsetY ?? this.offsetY,
      zoom: zoom ?? this.zoom,
    );
  }

  ///----------------------------------------------------------
  /// Traducción
  ///----------------------------------------------------------

  CanvasViewport translate({
    required double dx,
    required double dy,
  }) {
    return CanvasViewport(
      offsetX: offsetX + dx,
      offsetY: offsetY + dy,
      zoom: zoom,
    );
  }

  ///----------------------------------------------------------
  /// Escalado
  ///----------------------------------------------------------

  CanvasViewport scale(double value) {
    return CanvasViewport(
      offsetX: offsetX,
      offsetY: offsetY,
      zoom: value.clamp(0.25, 4.0),
    );
  }

  ///----------------------------------------------------------
  /// Reset
  ///----------------------------------------------------------

  CanvasViewport reset() {
    return const CanvasViewport.initial();
  }

  ///----------------------------------------------------------
  /// Debug
  ///----------------------------------------------------------

  @override
  String toString() {
    return 'CanvasViewport('
        'offsetX: $offsetX, '
        'offsetY: $offsetY, '
        'zoom: $zoom'
        ')';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is CanvasViewport &&
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