import 'package:flutter/material.dart';

import '../../../../../design_system/colors/app_colors.dart';
import '../layout/app_shell_layout.dart';

class AppShellPage extends StatelessWidget {
  const AppShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: AppShellLayout(),
      ),
    );
  }
}