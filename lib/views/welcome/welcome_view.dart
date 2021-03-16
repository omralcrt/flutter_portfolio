import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/widgets/toolbar_view.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ToolbarView(),
          ],
        ),
      ),
    );
  }
}
