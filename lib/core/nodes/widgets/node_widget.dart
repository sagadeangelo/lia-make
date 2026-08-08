import 'package:flutter/material.dart';

import '../models/canvas_node.dart';
import '../models/node_definition.dart';
import '../models/node_port.dart';
import '../models/node_state.dart';
import '../models/node_style.dart';

import 'node_body.dart';
import 'node_header.dart';
import 'node_port_widget.dart';

/// ============================================================
/// LIA-Make
/// Node Widget
/// ------------------------------------------------------------
/// Contenedor visual base de todos los nodos.
/// ============================================================

class NodeWidget extends StatefulWidget {
  final CanvasNode node;
  final NodeDefinition definition;
  final NodeStyle style;
  final NodeState state;

  final VoidCallback? onTap;
  final GestureDragUpdateCallback? onDrag;

  const NodeWidget({
    super.key,
    required this.node,
    required this.definition,
    required this.style,
    required this.state,
    this.onTap,
    this.onDrag,
  });

  @override
  State<NodeWidget> createState() => _NodeWidgetState();
}

class _NodeWidgetState extends State<NodeWidget>
    with SingleTickerProviderStateMixin {
  bool _hover = false;

  late final AnimationController _controller;
  late final Animation<double> _elevation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
    );

    _elevation = Tween<double>(
      begin: widget.style.elevation,
      end: widget.style.elevation + 6,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //----------------------------------------------------------
  // Hover
  //----------------------------------------------------------

  void _enter() {
    if (_hover) return;

    setState(() => _hover = true);
    _controller.forward();
  }

  void _exit() {
    if (!_hover) return;

    setState(() => _hover = false);
    _controller.reverse();
  }

  //----------------------------------------------------------
  // UI
  //----------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _enter(),
      onExit: (_) => _exit(),

      child: GestureDetector(
        onTap: widget.onTap,
        onPanUpdate: widget.onDrag,

        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOut,

              width: widget.node.size.width,
              height: widget.node.size.height,

              padding: widget.style.padding,

              decoration: BoxDecoration(
                color: widget.style.backgroundColor.withValues(
                  alpha: widget.style.opacity,
                ),

                borderRadius: BorderRadius.circular(
                  widget.style.cornerRadius,
                ),

                border: Border.all(
                  color: _hover
                      ? widget.style.glowColor
                      : widget.style.borderColor,
                  width: widget.style.borderWidth,
                ),

                boxShadow: [
                  if (widget.style.showShadow)
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .28),
                      blurRadius: _elevation.value * 2,
                      offset: Offset(
                        0,
                        _elevation.value / 2,
                      ),
                    ),

                  if (_hover || widget.style.showGlow)
                    BoxShadow(
                      color: widget.style.glowColor.withValues(
                        alpha: .30,
                      ),
                      blurRadius: 24,
                      spreadRadius: 2,
                    ),
                ],
              ),

              child: Column(
                children: [
                  //------------------------------------------------
                  // HEADER
                  //------------------------------------------------

                  NodeHeader(
                    definition: widget.definition,
                    style: widget.style,
                    title: widget.node.title,
                    selected: widget.node.selected,
                  ),

                  //------------------------------------------------
                  // BODY
                  //------------------------------------------------

                  NodeBody(
                    style: widget.style,
                  ),

                  //------------------------------------------------
                  // PORTS
                  //------------------------------------------------

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      NodePortWidget(
                        port: NodePort(
                          id: "input",
                          name: "Input",
                          direction: PortDirection.input,
                        ),
                        color: widget.style.borderColor,
                      ),

                      NodePortWidget(
                        port: NodePort(
                          id: "output",
                          name: "Output",
                          direction: PortDirection.output,
                        ),
                        color: widget.style.borderColor,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}