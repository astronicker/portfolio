import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final AnimationController _spinController;
  late final AnimationController _entryController;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // Infinite spin for background SVG
    _spinController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 60),
    )..repeat();

    // Entry animation (fade + slide)
    _entryController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _entryController,
      curve: Curves.easeOut,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.05),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _entryController, curve: Curves.easeOut));

    _entryController.forward();
  }

  @override
  void dispose() {
    _spinController.dispose();
    _entryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(screenWidth < 950 ? 25 : 50),
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              width: screenWidth,
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    right: -170,
                    top: -200,
                    child: RotationTransition(
                      turns: _spinController,
                      child: SvgPicture.asset(
                        'assets/shapes/outlined/cookie 12.svg',
                        color: colorScheme.tertiary,
                        width: (screenWidth / 2).clamp(400, 800),
                        height: (screenWidth / 2).clamp(400, 800),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 250,
                      left: 25,
                      right: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ayush Shukla',
                          style: TextStyle(
                            fontFamily: 'Limelight',
                            color: colorScheme.primary,
                            fontSize: (screenWidth / 10).clamp(56, 116),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'Crafting pixels, pushing commits, and breaking things — so you don’t have to.',
                          style: TextStyle(
                            color: colorScheme.onPrimaryContainer,
                            fontSize: (screenWidth / 50).clamp(16, 20),
                          ),
                        ),
                        const SizedBox(height: 100),
                        Text(
                          'Exploring ideas in -',
                          style: TextStyle(
                            color: colorScheme.onPrimaryContainer,
                            fontSize: (screenWidth / 50).clamp(16, 24),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          'AOSP | Android Apps | Flutter | Linux',
                          style: TextStyle(
                            fontFamily: 'GoogleSansCode',
                            color: colorScheme.onPrimaryContainer,
                            fontSize: (screenWidth / 50).clamp(16, 24),
                          ),
                        ),
                        const SizedBox(height: 100),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Built with Flutter - Inspired by Material 3",
                            style: TextStyle(
                              color: colorScheme.onPrimaryContainer,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
