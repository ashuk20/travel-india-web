import 'package:flutter/material.dart';

typedef HoverWidgetBuilder =
    Widget Function(BuildContext context, bool isHovered);

class AppHover extends StatefulWidget {
  final HoverWidgetBuilder builder;
  final MouseCursor cursor;
  const AppHover({
    super.key,
    required this.builder,
    this.cursor = SystemMouseCursors.click,
  });

  @override
  State<AppHover> createState() => _AppHoverState();
}

class _AppHoverState extends State<AppHover> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: widget.builder(context, _isHovered),
    );
  }
}
