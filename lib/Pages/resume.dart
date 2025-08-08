import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/Widgets/container.dart';
import 'package:portfolio/Widgets/links.dart';
import 'package:portfolio/Widgets/responsive.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final colorScheme = Theme.of(context).colorScheme;

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
                'Resume',
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
          ResponsiveRowColumn(
            children: [
              ContainerBox(
                width: screenWidth < 1050 ? screenWidth : screenWidth / 2.15,
                text: 'Ayush Shukla',
                borderRadius:
                    screenWidth < 1050
                        ? BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )
                        : BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                fontSize: (screenWidth / 50).clamp(16, 20),
                textColor: colorScheme.onPrimaryContainer,
                backgroundColor: colorScheme.surfaceContainer,
                hoverRadius:
                    screenWidth < 1050
                        ? BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )
                        : BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      "I'm a developer driven by curiosity and hands-on exploration. With a strong foundation in Java, Linux, and mobile development, I focus on building clean, apps and tools that solve real-world problems.",
                      style: TextStyle(
                        color: colorScheme.onSurface,
                        fontSize: (screenWidth / 50).clamp(16, 20),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "I completed BCA with a Gold Medal for outstanding academic performance, recognizing my consistent dedication to learning and pushing limits.",
                      style: TextStyle(
                        color: colorScheme.onSurface,
                        fontSize: (screenWidth / 50).clamp(16, 20),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Certifications - \nRedHat Linux (RHCSA). \nAWS Certified Solutions Architect. \nCybersecurity.",
                      style: TextStyle(
                        color: colorScheme.onSurface,
                        fontSize: (screenWidth / 50).clamp(16, 20),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Hobbies - \nAOSP Development. \nLandscape Photography.",
                      style: TextStyle(
                        color: colorScheme.onSurface,
                        fontSize: (screenWidth / 50).clamp(16, 20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10, height: 10),
              Column(
                children: [
                  ContainerBox(
                    text: 'Resume & Certificates',
                    width:
                        screenWidth < 1050 ? screenWidth : screenWidth / 2.15,
                    textColor: colorScheme.onSurfaceVariant,
                    backgroundColor: colorScheme.surfaceContainer,
                    borderRadius:
                        screenWidth < 1050
                            ? BorderRadius.circular(0)
                            : BorderRadius.only(topRight: Radius.circular(25)),
                    hoverRadius:
                        screenWidth < 1050
                            ? BorderRadius.circular(0)
                            : BorderRadius.only(topRight: Radius.circular(25)),

                    fontSize: (screenWidth / 50).clamp(16, 20),
                  ),
                  const SizedBox(height: 10, width: 10),
                  Container(
                    width:
                        screenWidth < 1050 ? screenWidth : screenWidth / 2.15,
                    color: colorScheme.surfaceContainer,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 25,
                      ),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        alignment: WrapAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              openResume();
                            },
                            child: ContainerBox(
                              height: 150,
                              width: 150,
                              fontSize: 0,
                              borderRadius: BorderRadius.circular(50),
                              hoverRadius: BorderRadius.circular(50),
                              backgroundColor:
                                  colorScheme.surfaceContainerHighest,
                              hoverColor: colorScheme.primaryContainer,
                              child: Icon(Icons.download, size: 32),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Clipboard.setData(
                                ClipboardData(
                                  text:
                                      'https://drive.google.com/file/d/1NHg3nFaw4KXdSD6tJTEnJqe3tMprXqoI/view?usp=sharing',
                                ),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Link copied to clipboard!"),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            },
                            child: Transform.rotate(
                              angle: math.pi / 4,
                              child: ContainerBox(
                                height: 160,
                                width: 140,
                                borderRadius: BorderRadius.circular(100),
                                hoverRadius: BorderRadius.circular(100),
                                fontSize: 0,
                                backgroundColor:
                                    colorScheme.surfaceContainerHighest,
                                hoverColor: colorScheme.primaryContainer,

                                child: Transform.rotate(
                                  angle: -math.pi / 4,
                                  child: Icon(Icons.share, size: 32),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10, width: 10),
                  ContainerBox(
                    centerChild: false,
                    width:
                        screenWidth < 1050 ? screenWidth : screenWidth / 2.15,
                    backgroundColor: colorScheme.surfaceContainer,
                    borderRadius:
                        screenWidth < 1050
                            ? BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            )
                            : BorderRadius.only(
                              bottomRight: Radius.circular(25),
                            ),
                    hoverRadius:
                        screenWidth < 1050
                            ? BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            )
                            : BorderRadius.only(
                              bottomRight: Radius.circular(25),
                            ),
                    fontSize: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CertificateLinks(
                          text: '- Linux with RedHat',
                          onTap: certLinux,
                        ),
                        const SizedBox(height: 10),
                        CertificateLinks(
                          text: '- AWS Certified Solutions Architect',
                          onTap: certAWS,
                        ),
                        const SizedBox(height: 10),
                        CertificateLinks(
                          text: '- Cyber Security',
                          onTap: certCyberSecurity,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CertificateLinks extends StatelessWidget {
  final String text;
  final Function onTap;

  const CertificateLinks({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    double screenWidth = MediaQuery.of(context).size.width;
    final ValueNotifier<bool> isHovered = ValueNotifier(false);

    return ValueListenableBuilder(
      valueListenable: isHovered,
      builder: (context, value, child) {
        return MouseRegion(
          onEnter: (_) => isHovered.value = true,
          onExit: (_) => isHovered.value = false,
          child: GestureDetector(
            onTap: () {
              onTap();
            },
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'GoogleSansCode',
                fontWeight: FontWeight.bold,
                color:
                    isHovered.value
                        ? colorScheme.onSurface
                        : colorScheme.tertiary,
                fontSize: (screenWidth / 50).clamp(16, 20),
              ),
            ),
          ),
        );
      },
    );
  }
}
