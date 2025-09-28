
import 'package:flutter/material.dart';

class WhiteCard extends StatelessWidget {
  final Widget child;
  const WhiteCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(color: Colors.white),
      child: child,
    );
  }
}
