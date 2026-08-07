import 'package:flutter/material.dart';

import '../../../../../design_system/colors/app_colors.dart';
import '../widgets/bottom_console.dart';
import '../widgets/canvas_area.dart';
import '../widgets/left_panel.dart';
import '../widgets/right_panel.dart';
import '../widgets/top_bar.dart';

/// ============================================================
/// LIA-Make
/// Application Shell Layout
///
/// Distribuye toda la interfaz principal.
/// ============================================================

class AppShellLayout extends StatelessWidget {
  const AppShellLayout({super.key});

  static const double _topBarHeight = 72;
  static const double _leftPanelWidth = 300;
  static const double _rightPanelWidth = 380;
  static const double _bottomConsoleHeight = 180;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        children: [
          // ====================================================
          // TOP BAR
          // ====================================================

          const SizedBox(
            height: _topBarHeight,
            child: TopBar(),
          ),

          // ====================================================
          // MAIN CONTENT
          // ====================================================

          Expanded(
            child: Row(
              children: [
                // Left Panel
                const SizedBox(
                  width: _leftPanelWidth,
                  child: LeftPanel(),
                ),

                // Canvas
                const Expanded(
                  child: CanvasArea(),
                ),

                // Right Panel
                const SizedBox(
                  width: _rightPanelWidth,
                  child: RightPanel(),
                ),
              ],
            ),
          ),

          // ====================================================
          // BOTTOM CONSOLE
          // ====================================================

          const SizedBox(
            height: _bottomConsoleHeight,
            child: BottomConsole(),
          ),
        ],
      ),
    );
  }
}