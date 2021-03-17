import 'package:flutter/material.dart';

class FooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: SelectableText("Made With Flutter ❤️ © 2021 Ömral Cörüt"),
    );
  }
}
