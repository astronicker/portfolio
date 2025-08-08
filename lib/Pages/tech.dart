import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/svgbox.dart';

class TechPage extends StatelessWidget {
  const TechPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.all(screenWidth < 950 ? 25 : 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Tech Stack',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
                color: colorScheme.primary,
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            width: screenWidth,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                spacing: screenWidth / 8,
                runSpacing: screenWidth / 8,
                children: [
                  SvgBox(
                    text: 'Flutter',
                    path: 'assets/shapes/filled/cookie 6.svg',
                    icon1: FontAwesomeIcons.flutter,
                  ),
                  SvgBox(
                    height: 140,
                    width: 140,
                    text: 'Java',
                    path: 'assets/shapes/filled/bun.svg',
                    icon1: FeatherIcons.coffee,
                  ),
                  SvgBox(
                    text: 'Linux',
                    path: 'assets/shapes/filled/circle.svg',
                    icon1: FontAwesomeIcons.linux,
                  ),
                  SvgBox(
                    text: 'GitHub',
                    path: 'assets/shapes/filled/ghost.svg',
                    icon1: FontAwesomeIcons.github,
                  ),
                  SvgBox(
                    text: 'Firebase',
                    path: 'assets/shapes/filled/diamond.svg',
                    icon1: FontAwesomeIcons.fire,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
