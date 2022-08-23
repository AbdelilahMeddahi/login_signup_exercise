import 'package:flutter/material.dart';

class HelperFunctions {
  static Widget wrapWithAnimationBuilder({
    required Animation<Offset> animation,
    required Widget child,
  }) {
    return AnimatedBuilder(
      animation: animation,
      builder: (_, __) => FractionalTranslation(
        translation: animation.value,
        child: child,
      ),
    );
  }
}
