import 'package:flutter/material.dart';

import '../models/canvas_node.dart';
import '../models/node_definition.dart';
import '../models/node_state.dart';

/// ============================================================
/// LIA-Make
/// Node Factory
/// ------------------------------------------------------------
/// Responsable de crear instancias de CanvasNode
/// a partir de una NodeDefinition.
///
/// Futuras responsabilidades:
/// • IDs automáticos (UUID)
/// • Clonado
/// • Templates
/// • Plugins
/// • Undo / Redo
/// ============================================================

class NodeFactory {
  NodeFactory._();

  static int _counter = 0;

  //------------------------------------------------------------
  // Crear nodo
  //------------------------------------------------------------

  static CanvasNode create({
    required NodeDefinition definition,
    Offset position = Offset.zero,
  }) {
    _counter++;

    return CanvasNode(
      id: "node_$_counter",

      // Ahora CanvasNode recibe NodeType
      type: definition.type,

      title: definition.title,

      position: position,

      size: definition.defaultSize,

      data: {
        "definition": definition.type.name,
        "state": NodeState.idle.name,
      },
    );
  }

  //------------------------------------------------------------
  // Clonar
  //------------------------------------------------------------

  static CanvasNode clone(
    CanvasNode node,
  ) {
    _counter++;

    return node.copyWith(
      id: "node_$_counter",
      position: node.position + const Offset(30, 30),
      selected: false,
    );
  }

  //------------------------------------------------------------
  // Crear desde JSON
  //------------------------------------------------------------

  static CanvasNode fromJson(
    Map<String, dynamic> json,
  ) {
    return CanvasNode.fromJson(json);
  }

  //------------------------------------------------------------
  // Exportar
  //------------------------------------------------------------

  static Map<String, dynamic> toJson(
    CanvasNode node,
  ) {
    return node.toJson();
  }

  //------------------------------------------------------------
  // Reset IDs
  //------------------------------------------------------------

  static void resetCounter() {
    _counter = 0;
  }
}