import 'package:flutter/material.dart';

import '../../design_system/theme/app_theme.dart';
import '../../features/shell/presentation/pages/app_shell_page.dart';

/// ============================================================
/// LIA-Make
///
/// Root Application Widget
///
/// Toda la aplicación inicia aquí.
/// ============================================================

class LiaMakeApp extends StatelessWidget {
  const LiaMakeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LIA-Make',

      debugShowCheckedModeBanner: false,

      theme: AppTheme.dark,

      home: const AppShellPage(),
    );
  }
}