import 'package:ashish_cv/resume/components/utils/hover_anim.dart';
import 'package:flutter/material.dart';

/// Ref: https://medium.com/flutter-community/hover-effects-in-flutter-web-using-extensions-2eb262bb6309

extension HoverExtensions on Widget {
  Widget get animateUpOnHover {
    return HoverAnimation(
      child: this,
    );
  }
}
