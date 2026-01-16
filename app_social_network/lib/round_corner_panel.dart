import 'package:flutter/material.dart';


class RoundCornerPanel extends StatelessWidget {
  final Widget? child;
  final Color? color;
  const RoundCornerPanel({super.key ,this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: color ?? Color(0xFF77bfa8),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child ?? const Center(),//peut avoir un contenu vide
    );
  }
}