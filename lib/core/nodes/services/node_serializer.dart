import '../models/canvas_node.dart';
import '../models/node_connection.dart';

/// ============================================================
/// LIA-Make
/// Node Serializer
/// ------------------------------------------------------------
/// Convierte nodos y conexiones hacia/desde JSON.
///
/// Futuro:
///
/// • Proyecto .lia
/// • Exportación
/// • Importación
/// • Versionado
/// • Compresión
/// • Cloud Sync
/// ============================================================

class NodeSerializer {
  NodeSerializer._();

  //------------------------------------------------------------
  // Nodo -> JSON
  //------------------------------------------------------------

  static Map<String, dynamic> nodeToJson(
    CanvasNode node,
  ) {
    return node.toJson();
  }

  //------------------------------------------------------------
  // JSON -> Nodo
  //------------------------------------------------------------

  static CanvasNode nodeFromJson(
    Map<String, dynamic> json,
  ) {
    return CanvasNode.fromJson(json);
  }

  //------------------------------------------------------------
  // Lista -> JSON
  //------------------------------------------------------------

  static List<Map<String, dynamic>> nodesToJson(
    List<CanvasNode> nodes,
  ) {
    return nodes
        .map((node) => node.toJson())
        .toList();
  }

  //------------------------------------------------------------
  // JSON -> Lista
  //------------------------------------------------------------

  static List<CanvasNode> nodesFromJson(
    List<dynamic> json,
  ) {
    return json
        .map(
          (item) => CanvasNode.fromJson(
            item as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  //------------------------------------------------------------
  // Conexión -> JSON
  //------------------------------------------------------------

  static Map<String, dynamic> connectionToJson(
    NodeConnection connection,
  ) {
    return connection.toJson();
  }

  //------------------------------------------------------------
  // JSON -> Conexión
  //------------------------------------------------------------

  static NodeConnection connectionFromJson(
    Map<String, dynamic> json,
  ) {
    return NodeConnection.fromJson(json);
  }

  //------------------------------------------------------------
  // Lista conexiones -> JSON
  //------------------------------------------------------------

  static List<Map<String, dynamic>> connectionsToJson(
    List<NodeConnection> connections,
  ) {
    return connections
        .map((connection) => connection.toJson())
        .toList();
  }

  //------------------------------------------------------------
  // JSON -> Lista conexiones
  //------------------------------------------------------------

  static List<NodeConnection> connectionsFromJson(
    List<dynamic> json,
  ) {
    return json
        .map(
          (item) => NodeConnection.fromJson(
            item as Map<String, dynamic>,
          ),
        )
        .toList();
  }

  //------------------------------------------------------------
  // Proyecto completo
  //------------------------------------------------------------

  static Map<String, dynamic> projectToJson({
    required List<CanvasNode> nodes,
    required List<NodeConnection> connections,
  }) {
    return {
      "version": 1,
      "nodes": nodesToJson(nodes),
      "connections": connectionsToJson(connections),
    };
  }
}