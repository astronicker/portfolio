import 'package:flutter/material.dart';

class ContainerBox extends StatefulWidget {
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius borderRadius;
  final double fontSize;
  final Color? hoverColor;
  final BorderRadius? hoverRadius;
  final Widget? child;
  final double? width;
  final double? height;
  final bool centerChild;

  const ContainerBox({
    super.key,
    this.backgroundColor,
    this.textColor,
    this.child,
    this.text,
    required this.borderRadius,
    required this.fontSize,
    this.hoverColor,
    this.hoverRadius,
    this.width,
    this.height,
    this.centerChild = true,
  });

  @override
  State<ContainerBox> createState() => _ContainerBoxState();
}

class _ContainerBoxState extends State<ContainerBox> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final screenWidth = MediaQuery.of(context).size.width;
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        height: widget.height,
        width: widget.width ?? screenWidth,
        decoration: BoxDecoration(
          color:
              _isHovering
                  ? widget.hoverColor ?? widget.backgroundColor
                  : widget.backgroundColor,
          borderRadius:
              _isHovering
                  ? widget.hoverRadius ?? widget.borderRadius
                  : widget.borderRadius,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.text != null)
              Text(
                widget.text!,
                style: TextStyle(
                  color: _isHovering ? colorScheme.primary : widget.textColor,
                  fontSize: (screenWidth / 50).clamp(16, 20),
                  fontWeight: FontWeight.w500,
                ),
              ),
            if (widget.child != null)
              widget.centerChild ? Center(child: widget.child!) : widget.child!,
          ],
        ),
      ),
    );
  }
}
