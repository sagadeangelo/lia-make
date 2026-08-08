import '../models/node_category.dart';
import '../models/node_definition.dart';
import '../models/node_type.dart';

/// ============================================================
/// LIA-Make
/// Node Registry
/// ------------------------------------------------------------
/// Catálogo central de todos los nodos disponibles.
///
/// Responsabilidades:
///
/// • Registrar nodos
/// • Buscar nodos
/// • Obtener categorías
/// • Preparar soporte para Plugins
///
/// En futuras versiones:
///
/// • Marketplace
/// • Plugins
/// • Hot Reload de nodos
/// • Descarga dinámica
/// ============================================================

class NodeRegistry {
  NodeRegistry._();

  static final NodeRegistry instance = NodeRegistry._();

  final Map<NodeType, NodeDefinition> _definitions = {};

  //------------------------------------------------------------
  // Registro
  //------------------------------------------------------------

  void register(NodeDefinition definition) {
    _definitions[definition.type] = definition;
  }

  //------------------------------------------------------------
  // Registro múltiple
  //------------------------------------------------------------

  void registerAll(
    Iterable<NodeDefinition> definitions,
  ) {
    for (final definition in definitions) {
      register(definition);
    }
  }

  //------------------------------------------------------------
  // Buscar
  //------------------------------------------------------------

  NodeDefinition? find(NodeType type) {
    return _definitions[type];
  }

  //------------------------------------------------------------
  // Todos
  //------------------------------------------------------------

  List<NodeDefinition> getAll() {
    return _definitions.values.toList();
  }

  //------------------------------------------------------------
  // Por categoría
  //------------------------------------------------------------

  List<NodeDefinition> byCategory(
    NodeCategory category,
  ) {
    return _definitions.values
        .where((d) => d.category == category)
        .toList();
  }

  //------------------------------------------------------------
  // Existe
  //------------------------------------------------------------

  bool contains(NodeType type) {
    return _definitions.containsKey(type);
  }

  //------------------------------------------------------------
  // Cantidad
  //------------------------------------------------------------

  int get count => _definitions.length;

  //------------------------------------------------------------
  // Limpiar
  //------------------------------------------------------------

  void clear() {
    _definitions.clear();
  }
}