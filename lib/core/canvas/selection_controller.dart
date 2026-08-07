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

  /// IDs de los nodos seleccionados.
  final Set<String> _selectedNodes = {};

  /// ----------------------------------------------------------
  /// Getters
  /// ----------------------------------------------------------

  Set<String> get selectedNodes =>
      Set.unmodifiable(_selectedNodes);

  bool get hasSelection => _selectedNodes.isNotEmpty;

  int get selectionCount => _selectedNodes.length;

  /// ----------------------------------------------------------
  /// Seleccionar un nodo.
  /// ----------------------------------------------------------

  void select(String nodeId) {
    _selectedNodes
      ..clear()
      ..add(nodeId);

    notifyListeners();
  }

  /// ----------------------------------------------------------
  /// Agregar un nodo a la selección.
  /// ----------------------------------------------------------

  void add(String nodeId) {
    _selectedNodes.add(nodeId);
    notifyListeners();
  }

  /// ----------------------------------------------------------
  /// Quitar un nodo.
  /// ----------------------------------------------------------

  void remove(String nodeId) {
    _selectedNodes.remove(nodeId);
    notifyListeners();
  }

  /// ----------------------------------------------------------
  /// Alternar selección.
  /// ----------------------------------------------------------

  void toggle(String nodeId) {
    if (_selectedNodes.contains(nodeId)) {
      _selectedNodes.remove(nodeId);
    } else {
      _selectedNodes.add(nodeId);
    }

    notifyListeners();
  }

  /// ----------------------------------------------------------
  /// Seleccionar múltiples nodos.
  /// ----------------------------------------------------------

  void selectMany(List<String> nodeIds) {
    _selectedNodes
      ..clear()
      ..addAll(nodeIds);

    notifyListeners();
  }

  /// ----------------------------------------------------------
  /// Limpiar selección.
  /// ----------------------------------------------------------

  void clear() {
    _selectedNodes.clear();
    notifyListeners();
  }

  /// ----------------------------------------------------------
  /// Verificar selección.
  /// ----------------------------------------------------------

  bool isSelected(String nodeId) {
    return _selectedNodes.contains(nodeId);
  }

  /// ----------------------------------------------------------
  /// Seleccionar todos.
  /// ----------------------------------------------------------

  void selectAll(List<String> nodeIds) {
    _selectedNodes
      ..clear()
      ..addAll(nodeIds);

    notifyListeners();
  }

  @override
  String toString() {
    return '''
SelectionController
-------------------------
Selected: $_selectedNodes
Count: $selectionCount
''';
  }
}