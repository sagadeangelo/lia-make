import 'package:flutter/material.dart';

import '../nodes/models/canvas_node.dart';
import '../nodes/models/node_connection.dart';
import 'canvas_state.dart';
import 'canvas_viewport.dart';

/// ============================================================
/// LIA-Make
/// Canvas Controller
/// ------------------------------------------------------------
/// Cerebro del editor.
///
/// Responsabilidades:
///
/// • Controlar el Viewport
/// • Zoom
/// • Pan
/// • Delegar operaciones al CanvasState
///
/// El CanvasState representa el documento.
/// El Controller controla la navegación.
/// ============================================================

class CanvasController extends ChangeNotifier {
  CanvasController({
    CanvasState? state,
    CanvasViewport? viewport,
  })  : _state = state ?? CanvasState(),
        _viewport = viewport ?? const CanvasViewport.initial();

  //------------------------------------------------------------
  // STATE
  //------------------------------------------------------------

  final CanvasState _state;

  CanvasState get state => _state;

  //------------------------------------------------------------
  // VIEWPORT
  //------------------------------------------------------------

  CanvasViewport _viewport;

  CanvasViewport get viewport => _viewport;

  //------------------------------------------------------------
  // ZOOM
  //------------------------------------------------------------

  double get zoom => _viewport.zoom;

  //------------------------------------------------------------
  // PAN
  //------------------------------------------------------------

  void moveBy({
    required double dx,
    required double dy,
  }) {
    _viewport = _viewport.translate(
      dx: dx,
      dy: dy,
    );

    notifyListeners();
  }

  void moveTo({
    required double x,
    required double y,
  }) {
    _viewport = _viewport.copyWith(
      offsetX: x,
      offsetY: y,
    );

    notifyListeners();
  }

  //------------------------------------------------------------
  // ZOOM
  //------------------------------------------------------------

  void setZoom(double value) {
    _viewport = _viewport.copyWith(
      zoom: value.clamp(0.25, 4.0),
    );

    notifyListeners();
  }

  void zoomIn([double step = .10]) {
    setZoom(zoom + step);
  }

  void zoomOut([double step = .10]) {
    setZoom(zoom - step);
  }

  //------------------------------------------------------------
  // NODES
  //------------------------------------------------------------

  void addNode(CanvasNode node) {
    _state.addNode(node);
    notifyListeners();
  }

  void removeNode(String id) {
    _state.removeNode(id);
    notifyListeners();
  }

  void moveNode(
    String id,
    Offset delta,
  ) {
    _state.moveNode(id, delta);
    notifyListeners();
  }

  //------------------------------------------------------------
  // SELECTION
  //------------------------------------------------------------

  void selectNode(String id) {
    _state.selectNode(id);
    notifyListeners();
  }

  void clearSelection() {
    _state.clearSelection();
    notifyListeners();
  }

  //------------------------------------------------------------
  // CONNECTIONS
  //------------------------------------------------------------

  void addConnection(
    NodeConnection connection,
  ) {
    _state.addConnection(connection);
    notifyListeners();
  }

  void removeConnection(String id) {
    _state.removeConnection(id);
    notifyListeners();
  }

  //------------------------------------------------------------
  // RESET
  //------------------------------------------------------------

  void resetViewport() {
    _viewport = const CanvasViewport.initial();
    notifyListeners();
  }

  void clearCanvas() {
    _state.clear();
    notifyListeners();
  }

  //------------------------------------------------------------
  // DEBUG
  //------------------------------------------------------------

  @override
  String toString() {
    return '''
CanvasController

Viewport
--------
Offset X : ${_viewport.offsetX}
Offset Y : ${_viewport.offsetY}
Zoom     : ${_viewport.zoom}

Canvas
------
Nodes       : ${_state.nodeCount}
Connections : ${_state.connectionCount}
Selected    : ${_state.selectedNodeId}
''';
  }
}