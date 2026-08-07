import 'package:flutter/foundation.dart';

import 'canvas_state.dart';
import 'viewport.dart';

/// ============================================================
/// LIA-Make
/// Canvas Controller
/// ------------------------------------------------------------
/// Controlador principal del Canvas.
///
/// Responsabilidades:
/// • Mantener el estado del Canvas.
/// • Mover el viewport.
/// • Controlar el zoom.
/// • Notificar cambios a la UI.
///
/// En futuras versiones también controlará:
/// • Selección
/// • Drag & Drop
/// • Conexiones
/// • Historial (Undo / Redo)
/// ============================================================

class CanvasController extends ChangeNotifier {
  CanvasController({
    CanvasState? initialState,
  }) : _state = initialState ?? CanvasState.initial();

  CanvasState _state;

  CanvasState get state => _state;

  Viewport get viewport => _state.viewport;

  double get zoom => viewport.zoom;

  // ============================================================
  // VIEWPORT
  // ============================================================

  void moveBy({
    required double dx,
    required double dy,
  }) {
    _state = _state.copyWith(
      viewport: viewport.translate(
        dx: dx,
        dy: dy,
      ),
    );

    notifyListeners();
  }

  void moveTo({
    required double x,
    required double y,
  }) {
    _state = _state.copyWith(
      viewport: viewport.copyWith(
        offsetX: x,
        offsetY: y,
      ),
    );

    notifyListeners();
  }

  // ============================================================
  // ZOOM
  // ============================================================

  void setZoom(double value) {
    final clamped = value.clamp(0.25, 4.0);

    _state = _state.copyWith(
      viewport: viewport.copyWith(
        zoom: clamped,
      ),
    );

    notifyListeners();
  }

  void zoomIn([double step = .10]) {
    setZoom(zoom + step);
  }

  void zoomOut([double step = .10]) {
    setZoom(zoom - step);
  }

  // ============================================================
  // RESET
  // ============================================================

  void reset() {
    _state = CanvasState.initial();
    notifyListeners();
  }

  // ============================================================
  // DEBUG
  // ============================================================

  @override
  String toString() {
    return '''
CanvasController
-------------------------
Offset X : ${viewport.offsetX}
Offset Y : ${viewport.offsetY}
Zoom     : ${viewport.zoom}
''';
  }
}