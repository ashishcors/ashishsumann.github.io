import 'package:flutter/material.dart';

class HoverAnimation extends StatefulWidget {
  final Widget child;

  // You can also pass the translation in here if you want to
  HoverAnimation({Key? key, required this.child}) : super(key: key);

  @override
  _HoverAnimationState createState() => _HoverAnimationState();
}

class _HoverAnimationState extends State<HoverAnimation> {
  final nonHoverTransform = Matrix4.identity()..scale(1);
  final hoverTransform = Matrix4.identity()..scale(1.1);
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}
