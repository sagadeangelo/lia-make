import 'package:flutter/foundation.dart';

/// ============================================================
/// LIA-Make
/// Selection Controller
/// ------------------------------------------------------------
/// Controla la selección de elementos dentro del Canvas.
///
/// Futuras responsabilidades:
///
/// • Selección simple
/// • Selección múltiple
/// • Ctrl + Click
/// • Shift + Click
/// • Selection Rectangle
/// • Select All
/// • Invert Selection
/// • Delete Selection
/// ============================================================

class SelectionController extends ChangeNotifier {
  SelectionController();

  //------------------------------------------------------------
  // Selected Nodes
  //------------------------------------------------------------

  final Set<String> _selectedNodes = {};

  //------------------------------------------------------------
  // Getters
  //------------------------------------------------------------

  Set<String> get selectedNodes =>
      Set.unmodifiable(_selectedNodes);

  bool get hasSelection =>
      _selectedNodes.isNotEmpty;

  int get selectionCount =>
      _selectedNodes.length;

  //------------------------------------------------------------
  // Single Selection
  //------------------------------------------------------------

  void select(String nodeId) {
    _selectedNodes
      ..clear()
      ..add(nodeId);

    notifyListeners();
  }

  //------------------------------------------------------------
  // Add
  //------------------------------------------------------------

  void add(String nodeId) {
    _selectedNodes.add(nodeId);

    notifyListeners();
  }

  //------------------------------------------------------------
  // Remove
  //------------------------------------------------------------

  void remove(String nodeId) {
    _selectedNodes.remove(nodeId);

    notifyListeners();
  }

  //------------------------------------------------------------
  // Toggle
  //------------------------------------------------------------

  void toggle(String nodeId) {
    if (_selectedNodes.contains(nodeId)) {
      _selectedNodes.remove(nodeId);
    } else {
      _selectedNodes.add(nodeId);
    }

    notifyListeners();
  }

  //------------------------------------------------------------
  // Multi Selection
  //------------------------------------------------------------

  void selectMany(
    List<String> nodeIds,
  ) {
    _selectedNodes
      ..clear()
      ..addAll(nodeIds);

    notifyListeners();
  }

  //------------------------------------------------------------
  // Clear
  //------------------------------------------------------------

  void clear() {
    _selectedNodes.clear();

    notifyListeners();
  }

  //------------------------------------------------------------
  // Helpers
  //------------------------------------------------------------

  bool isSelected(String nodeId) {
    return _selectedNodes.contains(nodeId);
  }

  //------------------------------------------------------------
  // Select All
  //------------------------------------------------------------

  void selectAll(
    List<String> nodeIds,
  ) {
    _selectedNodes
      ..clear()
      ..addAll(nodeIds);

    notifyListeners();
  }

  //------------------------------------------------------------
  // Debug
  //------------------------------------------------------------

  @override
  String toString() {
    return '''
SelectionController

Selected: $_selectedNodes
Count: $selectionCount
''';
  }
}