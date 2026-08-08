import 'package:flutter/material.dart';

import '../models/node_port.dart';

/// ============================================================
/// LIA-Make
/// Node Port Widget
/// ------------------------------------------------------------
/// Puerto visual reutilizable.
///
/// Futuras características:
///
/// • Hover
/// • Glow
/// • Magnetismo
/// • Highlight
/// • Drag Connection
/// • Flujo de energía
/// ============================================================

class NodePortWidget extends StatefulWidget {
  final NodePort port;

  final Color color;

  final VoidCallback? onTap;

  const NodePortWidget({
    super.key,
    required this.port,
    required this.color,
    this.onTap,
  });

  @override
  State<NodePortWidget> createState() =>
      _NodePortWidgetState();
}

class _NodePortWidgetState extends State<NodePortWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  bool _hover = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //------------------------------------------------------------
  // Hover
  //------------------------------------------------------------

  void _enter() {
    if (_hover) return;

    setState(() {
      _hover = true;
    });

    _controller.forward();
  }

  void _exit() {
    if (!_hover) return;

    setState(() {
      _hover = false;
    });

    _controller.reverse();
  }

  //------------------------------------------------------------
  // UI
  //------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final double size = _hover ? 20 : 16;

    return MouseRegion(
      onEnter: (_) => _enter(),
      onExit: (_) => _exit(),
      cursor: SystemMouseCursors.click,

      child: GestureDetector(
        onTap: widget.onTap,

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),

          width: size,
          height: size,

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color: widget.color,

            border: Border.all(
              color: Colors.white,
              width: 2,
            ),

            boxShadow: [
              BoxShadow(
                color: widget.color.withValues(
                  alpha: .45,
                ),
                blurRadius: _hover ? 18 : 10,
                spreadRadius: _hover ? 2 : 0,
              ),
            ],
          ),

          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 160),

              width: _hover ? 7 : 5,
              height: _hover ? 7 : 5,

              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}