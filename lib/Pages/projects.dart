import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Widgets/links.dart';
import 'package:portfolio/Widgets/projectcard.dart';
import 'package:portfolio/Widgets/techstackcard.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.all(screenWidth < 950 ? 25 : 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Projects',
              style: TextStyle(
                fontFamily: 'RobotoSlab',
                color: colorScheme.primary,
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Project Cards
          const SizedBox(height: 25),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Wrap(
                alignment:
                    screenWidth < 1370
                        ? WrapAlignment.spaceEvenly
                        : WrapAlignment.start,
                spacing: 25,
                runSpacing: 25,
                children: [
                  ProjectCard(
                    title: 'Donor',
                    description: 'An app to request and donate blood.',
                    titleColor: colorScheme.onPrimaryContainer,
                    outerBoxColor: colorScheme.primaryContainer,
                    innerBoxColor: colorScheme.primaryFixedDim,
                    path: 'assets/shapes/icons/donor.png',
                  ),
                  TechStackCard(
                    outerBoxColor: colorScheme.surfaceContainerHighest,
                    child: Column(
                      children: [
                        TechStack(
                          text: 'Flutter',
                          path: 'assets/shapes/outlined/cookie 6.svg',
                          icon: FontAwesomeIcons.flutter,
                        ),
                        TechStack(
                          text: 'Dart',
                          path: 'assets/shapes/outlined/cookie 6.svg',
                          icon: FontAwesomeIcons.dartLang,
                        ),
                        TechStack(
                          text: 'Firebase',
                          path: 'assets/shapes/outlined/cookie 6.svg',
                          icon: FontAwesomeIcons.fire,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      width:
                          screenWidth < 1370
                              ? screenWidth
                              : screenWidth - 50 - 50 - 320 * 2 - 50 - 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I built a real-time blood donation app using Flutter and Firebase as part of my college project. The app allows users to request blood donors through a smooth, modern UI and notifies other users instantly via push notifications using Firebase Cloud Messaging. It features secure OTP-based authentication, real-time updates via Cloud Firestore, and full CRUD operations for managing donation requests. Designed with clean UI and responsive animations, the app ensures a fast, user-friendly experience while addressing a real-world need for urgent blood donation coordination.',
                            textAlign:
                                screenWidth < 600
                                    ? TextAlign.start
                                    : TextAlign.justify,
                            style: TextStyle(
                              fontSize: (screenWidth / 50).clamp(16, 20),
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          const SizedBox(height: 25),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () => openDonor(),
                                child: Text(
                                  '- Screenshots',
                                  textAlign:
                                      screenWidth < 600
                                          ? TextAlign.start
                                          : TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: (screenWidth / 50).clamp(16, 20),
                                    color: colorScheme.tertiary,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                '|',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: colorScheme.tertiary,
                                ),
                              ),
                              const SizedBox(width: 15),
                              GestureDetector(
                                onTap: () => openGithubDonor(),
                                child: Text(
                                  'GitHub',
                                  textAlign:
                                      screenWidth < 600
                                          ? TextAlign.start
                                          : TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: (screenWidth / 50).clamp(16, 20),
                                    color: colorScheme.tertiary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Wrap(
                alignment:
                    screenWidth < 1370
                        ? WrapAlignment.spaceEvenly
                        : WrapAlignment.start,
                spacing: 20,
                runSpacing: 20,
                children: [
                  ProjectCard(
                    title: 'Android Bureau',
                    description:
                        'A blog sharing the latest in tech and development.',
                    titleColor: colorScheme.onPrimaryContainer,
                    outerBoxColor: colorScheme.primaryContainer,
                    innerBoxColor: colorScheme.primaryFixedDim,
                    path: 'assets/shapes/icons/androidbureau.png',
                  ),
                  TechStackCard(
                    outerBoxColor: colorScheme.surfaceContainerHighest,
                    child: Column(
                      children: [
                        TechStack(
                          text: 'Wordpress',
                          path: 'assets/shapes/outlined/cookie 6.svg',
                          icon: FontAwesomeIcons.w,
                        ),
                        TechStack(
                          text: 'Hostinger',
                          path: 'assets/shapes/outlined/cookie 6.svg',
                          icon: FontAwesomeIcons.h,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      width:
                          screenWidth < 1370
                              ? screenWidth
                              : screenWidth - 50 - 50 - 320 * 2 - 50 - 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "AndroiBureau is a tech blog website I built using WordPress, hosted on Hostinger. It focuses on delivering high-quality content around Android development, custom ROMs, developer tools, and emerging technologies. Designed for readability and SEO performance, the site features a clean, responsive layout optimized for both desktop and mobile users. With a focus on real-world developer insights, tutorials, and reviews, AndroiBureau aims to serve as a helpful resource for both budding and experienced tech enthusiasts.",
                            textAlign:
                                screenWidth < 600
                                    ? TextAlign.start
                                    : TextAlign.justify,
                            style: TextStyle(
                              fontSize: (screenWidth / 50).clamp(16, 20),
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          const SizedBox(height: 25),
                          GestureDetector(
                            onTap: () => openAndroidBureau(),
                            child: Text(
                              '- Android Bureau',
                              textAlign:
                                  screenWidth < 600
                                      ? TextAlign.start
                                      : TextAlign.justify,
                              style: TextStyle(
                                fontSize: (screenWidth / 50).clamp(16, 20),
                                color: colorScheme.tertiary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),
          //Third Card
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Wrap(
                alignment:
                    screenWidth < 1370
                        ? WrapAlignment.spaceEvenly
                        : WrapAlignment.start,
                spacing: 20,
                runSpacing: 20,
                children: [
                  ProjectCard(
                    title: 'Arc Notes',
                    description:
                        'Store notes locally and back them up to GitHub or Google Drive.',
                    titleColor: colorScheme.onPrimaryContainer,
                    outerBoxColor: colorScheme.primaryContainer,
                    innerBoxColor: colorScheme.primaryFixedDim,
                    path: 'assets/shapes/icons/arcnotes.png',
                  ),
                  TechStackCard(
                    outerBoxColor: colorScheme.surfaceContainerHighest,
                    child: Column(
                      children: [
                        TechStack(
                          text: 'Java',
                          path: 'assets/shapes/outlined/cookie 6.svg',
                          icon: FeatherIcons.coffee,
                        ),
                        TechStack(
                          text: 'GitHub (API)',
                          path: 'assets/shapes/outlined/cookie 6.svg',
                          icon: FontAwesomeIcons.github,
                        ),
                        TechStack(
                          text: 'Gdrive (API)',
                          path: 'assets/shapes/outlined/cookie 6.svg',
                          icon: FontAwesomeIcons.googleDrive,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: SizedBox(
                      width:
                          screenWidth < 1370
                              ? screenWidth
                              : screenWidth - 50 - 50 - 320 * 2 - 50 - 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Arc Notes is a modern note-taking application I'm developing in Java, designed with Material You–inspired UI principles for a clean and intuitive user experience. The app enables users to create and manage notes offline, while offering powerful cloud sync capabilities through integration with GitHub and Google Drive. Using JGit, Arc Notes supports Git-based versioning for seamless backup and history tracking, and leverages the Google Drive API to store notes in the cloud. Whether online or offline, Arc Notes ensures that your notes are secure, accessible, and always in sync making it ideal for both developers and everyday users.",
                            textAlign:
                                screenWidth < 600
                                    ? TextAlign.start
                                    : TextAlign.justify,
                            style: TextStyle(
                              fontSize: (screenWidth / 50).clamp(16, 20),
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          const SizedBox(height: 25),
                          GestureDetector(
                            onTap: () => openArcNotes(),
                            child: Text(
                              '- Screenshots',
                              textAlign:
                                  screenWidth < 600
                                      ? TextAlign.start
                                      : TextAlign.justify,
                              style: TextStyle(
                                fontSize: (screenWidth / 50).clamp(16, 20),
                                color: colorScheme.tertiary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
