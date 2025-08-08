import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgBox extends StatefulWidget {
  final IconData icon1;
  final IconData? icon2;
  final String path;
  final String text;
  final double? width;
  final double? height;

  const SvgBox({
    super.key,
    required this.icon1,
    this.icon2,
    required this.path,
    required this.text,
    this.width,
    this.height,
  });

  @override
  State<SvgBox> createState() => _SvgBoxState();
}

class _SvgBoxState extends State<SvgBox> with SingleTickerProviderStateMixin {
  bool _isHovering = false;
  late final AnimationController _controller;
  late final Animation<double> _rotation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _rotation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
  }

  void _onEnter(PointerEvent _) {
    setState(() => _isHovering = true);
    _controller.forward(from: 0); // Trigger spin once on hover
  }

  void _onExit(PointerEvent _) {
    setState(() => _isHovering = false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return MouseRegion(
      onEnter: _onEnter,
      onExit: _onExit,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 700),
        switchInCurve: Curves.easeOutCubic,
        switchOutCurve: Curves.easeInCubic,
        transitionBuilder: (child, animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child:
            _isHovering
                ? AnimatedContainer(
                  key: const ValueKey('hovered'),
                  duration: const Duration(milliseconds: 400),
                  height: widget.height ?? 150,
                  width: widget.width ?? 150,
                  decoration: BoxDecoration(
                    color: colorScheme.tertiaryContainer,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        widget.icon2 ?? widget.icon1,
                        color: colorScheme.onTertiaryContainer,
                        size: 28,
                      ),
                      SizedBox(height: 10),
                      Text(
                        widget.text,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onTertiaryContainer,
                        ),
                      ),
                    ],
                  ),
                )
                : RotationTransition(
                  key: const ValueKey('svg'),
                  turns: _rotation,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        widget.path,
                        width: widget.width ?? 150,
                        height: widget.height ?? 150,
                        color: colorScheme.tertiary,
                      ),
                      Icon(
                        widget.icon1,
                        color: colorScheme.onTertiary,
                        size: 28,
                      ),
                    ],
                  ),
                ),
      ),
    );
  }
}
