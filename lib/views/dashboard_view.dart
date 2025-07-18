import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/adaptive_layout_widget.dart';
import 'package:responsive_app/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout:(context) =>  DashboardDesktopLayout()),
    );
  }
}
