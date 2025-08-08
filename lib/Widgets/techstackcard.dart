import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TechStackCard extends StatelessWidget {
  final Color outerBoxColor;
  final Widget child;

  const TechStackCard({
    super.key,
    required this.outerBoxColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: 320,
      height: 400,
      decoration: BoxDecoration(
        color: outerBoxColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text(
              'Built With',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: colorScheme.tertiary,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

class TechStack extends StatefulWidget {
  final String path;
  final double? width;
  final double? height;
  final IconData? icon;
  final String? text;

  const TechStack({
    super.key,
    required this.path,
    this.height,
    this.width,
    this.icon,
    this.text,
  });

  @override
  State<TechStack> createState() => _TechStackState();
}

class _TechStackState extends State<TechStack>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat(); // infinite spin
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              RotationTransition(
                turns: _controller,
                child: SvgPicture.asset(
                  widget.path,
                  color: colorScheme.tertiary,
                  width: widget.width ?? 70,
                  height: widget.height ?? 70,
                ),
              ),
              Icon(widget.icon, size: 15, color: colorScheme.tertiary),
            ],
          ),
          const SizedBox(width: 25),
          Expanded(
            child: Text(
              widget.text ?? '',
              softWrap: true,
              style: TextStyle(
                fontSize: (screenWidth / 50).clamp(16, 20),
                color: colorScheme.tertiary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
