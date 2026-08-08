import 'package:flutter/material.dart';

import 'canvas_controller.dart';

import '../nodes/models/canvas_node.dart';
import '../nodes/models/node_category.dart';
import '../nodes/models/node_definition.dart';
import '../nodes/models/node_state.dart';
import '../nodes/models/node_style.dart';
import '../nodes/models/node_type.dart';

import '../nodes/widgets/node_widget.dart';

/// ============================================================
/// LIA-Make
/// Node Layer
/// ------------------------------------------------------------
/// Primera integración del Node Engine.
///
/// Se reemplazan los DemoNode por NodeWidget.
/// ============================================================

class NodeLayer extends StatelessWidget {
  final CanvasController controller;

  const NodeLayer({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final viewport = controller.viewport;

    //----------------------------------------------------------
    // DEMO NODES
    //----------------------------------------------------------

    final homeNode = CanvasNode(
      id: "home",
      type: NodeType.screen,
      title: "Home Screen",
      position: const Offset(220, 160),
    );

    final apiNode = CanvasNode(
      id: "login_api",
      type: NodeType.api,
      title: "Login API",
      position: const Offset(620, 380),
    );

    //----------------------------------------------------------
    // DEFINITIONS
    //----------------------------------------------------------

    final homeDefinition = NodeDefinition(
      type: NodeType.screen,
      category: NodeCategory.ui,
      title: "Home Screen",
      description: "Main application screen",
      icon: Icons.phone_android,
      color: Colors.blue,
    );

    final apiDefinition = NodeDefinition(
      type: NodeType.api,
      category: NodeCategory.network,
      title: "REST API",
      description: "HTTP Service",
      icon: Icons.cloud_outlined,
      color: Colors.green,
    );

    //----------------------------------------------------------
    // STYLES
    //----------------------------------------------------------

    final homeStyle = NodeStyle(
      backgroundColor: const Color(0xFF252525),
      borderColor: Colors.blue,
      glowColor: Colors.blueAccent,
    );

    final apiStyle = NodeStyle(
      backgroundColor: const Color(0xFF252525),
      borderColor: Colors.green,
      glowColor: Colors.greenAccent,
    );

    return IgnorePointer(
      child: Stack(
        children: [
          //------------------------------------------------------
          // HOME
          //------------------------------------------------------

          _WorldNode(
            node: homeNode,
            viewportOffsetX: viewport.offsetX,
            viewportOffsetY: viewport.offsetY,
            child: NodeWidget(
              node: homeNode,
              definition: homeDefinition,
              style: homeStyle,
              state: NodeState.idle,
            ),
          ),

          //------------------------------------------------------
          // API
          //------------------------------------------------------

          _WorldNode(
            node: apiNode,
            viewportOffsetX: viewport.offsetX,
            viewportOffsetY: viewport.offsetY,
            child: NodeWidget(
              node: apiNode,
              definition: apiDefinition,
              style: apiStyle,
              state: NodeState.idle,
            ),
          ),
        ],
      ),
    );
  }
}

/// ============================================================
/// WORLD NODE
/// ------------------------------------------------------------
/// Convierte coordenadas del mundo a pantalla.
/// ============================================================

class _WorldNode extends StatelessWidget {
  final CanvasNode node;

  final double viewportOffsetX;

  final double viewportOffsetY;

  final Widget child;

  const _WorldNode({
    required this.node,
    required this.viewportOffsetX,
    required this.viewportOffsetY,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: node.position.dx + viewportOffsetX,
      top: node.position.dy + viewportOffsetY,
      child: child,
    );
  }
}