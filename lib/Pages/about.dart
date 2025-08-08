import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/container.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(screenWidth < 950 ? 25 : 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'About me',
                style: TextStyle(
                  fontFamily: 'RobotoSlab',
                  color: colorScheme.primary,
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
          ContainerBox(
            text:
                'I spend most of my time exploring new tech, crafting smooth user experiences, and fine-tuning code until everything just feels right. Whether it’s building mobile apps, diving into AOSP, or experimenting with Linux.',
            textColor: colorScheme.onSurface,
            backgroundColor: colorScheme.surfaceContainer,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            fontSize: (screenWidth / 50).clamp(16, 20),
          ),
          const SizedBox(height: 5),
          ContainerBox(
            text:
                'For the past two years, I’ve been working independently as a freelance Flutter and Android Developer, building and shipping real features for remote clients across a variety of app concepts. Most projects were component-based or task-driven from crafting UI screens to integrating Firebase, push notifications, and complex API workflows. It’s been a hands-on journey where I’ve learned to think beyond code — into product, design, and delivering apps that actually work.',
            backgroundColor: colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(0),
            fontSize: (screenWidth / 50).clamp(16, 20),
          ),
          const SizedBox(height: 5),
          ContainerBox(
            text:
                'But beyond the code, I’m someone who geeks out over design trends, loves creative side projects, and is always chasing the question: “What’s next?”',
            backgroundColor: colorScheme.surfaceContainer,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            fontSize: (screenWidth / 50).clamp(16, 20),
          ),
        ],
      ),
    );
  }
}
