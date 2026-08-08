import 'package:flutter/material.dart';

import '../nodes/models/canvas_node.dart';
import '../nodes/models/node_connection.dart';

/// ============================================================
/// LIA-Make
/// Canvas State
/// ------------------------------------------------------------
/// Estado global del Canvas.
///
/// Toda la información del editor vive aquí.
///
/// Futuras responsabilidades:
///
/// • Nodos
/// • Conexiones
/// • Selección
/// • Zoom
/// • Pan
/// • Clipboard
/// • Undo / Redo
/// • Multi Selection
/// ============================================================

class CanvasState extends ChangeNotifier {
  CanvasState();

  //------------------------------------------------------------
  // NODES
  //------------------------------------------------------------

  final List<CanvasNode> _nodes = [];

  List<CanvasNode> get nodes =>
      List.unmodifiable(_nodes);

  //------------------------------------------------------------
  // CONNECTIONS
  //------------------------------------------------------------

  final List<NodeConnection> _connections = [];

  List<NodeConnection> get connections =>
      List.unmodifiable(_connections);

  //------------------------------------------------------------
  // SELECTION
  //------------------------------------------------------------

  String? _selectedNodeId;

  String? get selectedNodeId => _selectedNodeId;

  CanvasNode? get selectedNode {
    if (_selectedNodeId == null) {
      return null;
    }

    try {
      return _nodes.firstWhere(
        (node) => node.id == _selectedNodeId,
      );
    } catch (_) {
      return null;
    }
  }

  //------------------------------------------------------------
  // NODES
  //------------------------------------------------------------

  void addNode(CanvasNode node) {
    _nodes.add(node);
    notifyListeners();
  }

  void addNodes(List<CanvasNode> nodes) {
    _nodes.addAll(nodes);
    notifyListeners();
  }

  void removeNode(String id) {
    _nodes.removeWhere(
      (node) => node.id == id,
    );

    _connections.removeWhere(
      (connection) =>
          connection.fromNodeId == id ||
          connection.toNodeId == id,
    );

    if (_selectedNodeId == id) {
      _selectedNodeId = null;
    }

    notifyListeners();
  }

  //------------------------------------------------------------
  // MOVE
  //------------------------------------------------------------

  void moveNode(
    String id,
    Offset delta,
  ) {
    final index = _nodes.indexWhere(
      (node) => node.id == id,
    );

    if (index == -1) {
      return;
    }

    final node = _nodes[index];

    node.position += delta;

    notifyListeners();
  }

  //------------------------------------------------------------
  // SELECTION
  //------------------------------------------------------------

  void selectNode(String id) {
    _selectedNodeId = id;

    for (final node in _nodes) {
      node.selected = node.id == id;
    }

    notifyListeners();
  }

  void clearSelection() {
    _selectedNodeId = null;

    for (final node in _nodes) {
      node.selected = false;
    }

    notifyListeners();
  }

  //------------------------------------------------------------
  // CONNECTIONS
  //------------------------------------------------------------

  void addConnection(
    NodeConnection connection,
  ) {
    _connections.add(connection);

    notifyListeners();
  }

  void removeConnection(
    String id,
  ) {
    _connections.removeWhere(
      (c) => c.id == id,
    );

    notifyListeners();
  }

  //------------------------------------------------------------
  // CLEAR
  //------------------------------------------------------------

  void clear() {
    _nodes.clear();
    _connections.clear();
    _selectedNodeId = null;

    notifyListeners();
  }

  //------------------------------------------------------------
  // HELPERS
  //------------------------------------------------------------

  bool get hasSelection =>
      _selectedNodeId != null;

  bool get hasNodes =>
      _nodes.isNotEmpty;

  bool get hasConnections =>
      _connections.isNotEmpty;

  int get nodeCount =>
      _nodes.length;

  int get connectionCount =>
      _connections.length;
}