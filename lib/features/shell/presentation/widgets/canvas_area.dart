import 'package:flutter/material.dart';

import '../../../../../core/canvas/canvas_controller.dart';
import '../../../../../core/canvas/infinite_canvas.dart';
import '../../../../../design_system/colors/app_colors.dart';

/// ============================================================
/// LIA-Make
/// Canvas Area
/// ------------------------------------------------------------
/// Contenedor principal del Canvas.
///
/// A partir de este momento el Shell utiliza el verdadero
/// Canvas Engine.
/// ============================================================

class CanvasArea extends StatefulWidget {
  const CanvasArea({super.key});

  @override
  State<CanvasArea> createState() => _CanvasAreaState();
}

class _CanvasAreaState extends State<CanvasArea> {
  late final CanvasController _controller;

  @override
  void initState() {
    super.initState();

    _controller = CanvasController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: InfiniteCanvas(
        controller: _controller,
      ),
    );
  }
}