import 'viewport.dart';

/// ============================================================
/// LIA-Make
/// Zoom Controller
/// ------------------------------------------------------------
/// Gestiona toda la lógica relacionada con el zoom.
///
/// Responsabilidades:
/// • Zoom In
/// • Zoom Out
/// • Zoom absoluto
/// • Limitar niveles mínimos y máximos
///
/// En futuras versiones:
/// • Zoom hacia el cursor
/// • Zoom animado
/// • Zoom to Fit
/// • Zoom to Selection
/// ============================================================

class ZoomController {
  static const double minZoom = 0.25;
  static const double maxZoom = 4.0;
  static const double zoomStep = 0.10;

  const ZoomController();

  /// ----------------------------------------------------------
  /// Zoom absoluto
  /// ----------------------------------------------------------

  Viewport setZoom(
    Viewport viewport,
    double zoom,
  ) {
    return viewport.copyWith(
      zoom: zoom.clamp(minZoom, maxZoom),
    );
  }

  /// ----------------------------------------------------------
  /// Zoom +
  /// ----------------------------------------------------------

  Viewport zoomIn(Viewport viewport) {
    return setZoom(
      viewport,
      viewport.zoom + zoomStep,
    );
  }

  /// ----------------------------------------------------------
  /// Zoom -
  /// ----------------------------------------------------------

  Viewport zoomOut(Viewport viewport) {
    return setZoom(
      viewport,
      viewport.zoom - zoomStep,
    );
  }

  /// ----------------------------------------------------------
  /// Reset
  /// ----------------------------------------------------------

  Viewport reset(Viewport viewport) {
    return viewport.copyWith(
      zoom: 1.0,
    );
  }

  /// ----------------------------------------------------------
  /// Validación
  /// ----------------------------------------------------------

  bool canZoomIn(Viewport viewport) {
    return viewport.zoom < maxZoom;
  }

  bool canZoomOut(Viewport viewport) {
    return viewport.zoom > minZoom;
  }

  /// ----------------------------------------------------------
  /// Mouse Wheel
  /// ----------------------------------------------------------

  Viewport zoomFromScroll({
    required Viewport viewport,
    required double scrollDelta,
  }) {
    if (scrollDelta < 0) {
      return zoomIn(viewport);
    }

    if (scrollDelta > 0) {
      return zoomOut(viewport);
    }

    return viewport;
  }
}