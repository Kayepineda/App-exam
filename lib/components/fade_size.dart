import 'package:flutter/material.dart';

class SizeFade extends StatelessWidget {
  final Widget child;
  const SizeFade({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: ((child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(sizeFactor: animation, child: child),
        );
      }),
      switchInCurve: Curves.easeIn,
      switchOutCurve: Curves.easeIn,
      duration: const Duration(
        microseconds: 400,
      ),
      child: child,
    );
  }
}
