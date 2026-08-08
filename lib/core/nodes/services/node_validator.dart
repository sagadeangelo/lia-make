import '../models/canvas_node.dart';
import '../models/node_connection.dart';
import '../models/node_port.dart';

/// ============================================================
/// LIA-Make
/// Node Validator
/// ------------------------------------------------------------
/// Encargado de validar:
///
/// • Conexiones
/// • Compatibilidad
/// • Duplicados
/// • Integridad
///
/// En el futuro:
///
/// • Reglas IA
/// • Plugins
/// • Tipado fuerte
/// • Ejecución
/// ============================================================

class NodeValidator {
  NodeValidator._();

  //------------------------------------------------------------
  // Valida una conexión
  //------------------------------------------------------------

  static bool canConnect(
    NodePort output,
    NodePort input,
  ) {
    //----------------------------------------------------------
    // Deben ser salida → entrada
    //----------------------------------------------------------

    if (!output.isOutput) {
      return false;
    }

    if (!input.isInput) {
      return false;
    }

    //----------------------------------------------------------
    // Deben estar habilitados
    //----------------------------------------------------------

    if (!output.enabled) {
      return false;
    }

    if (!input.enabled) {
      return false;
    }

    //----------------------------------------------------------
    // Compatibilidad de tipos
    //----------------------------------------------------------

    if (output.type == PortDataType.any) {
      return true;
    }

    if (input.type == PortDataType.any) {
      return true;
    }

    return output.type == input.type;
  }

  //------------------------------------------------------------
  // Evita conectar un nodo consigo mismo
  //------------------------------------------------------------

  static bool canConnectNodes(
    CanvasNode from,
    CanvasNode to,
  ) {
    return from.id != to.id;
  }

  //------------------------------------------------------------
  // Conexión duplicada
  //------------------------------------------------------------

  static bool alreadyExists(
    NodeConnection connection,
    List<NodeConnection> all,
  ) {
    return all.any(
      (item) =>
          item.fromNodeId == connection.fromNodeId &&
          item.fromPortId == connection.fromPortId &&
          item.toNodeId == connection.toNodeId &&
          item.toPortId == connection.toPortId,
    );
  }

  //------------------------------------------------------------
  // Nodo visible
  //------------------------------------------------------------

  static bool canRender(
    CanvasNode node,
  ) {
    return node.visible;
  }

  //------------------------------------------------------------
  // Nodo movible
  //------------------------------------------------------------

  static bool canMove(
    CanvasNode node,
  ) {
    return !node.locked;
  }
}