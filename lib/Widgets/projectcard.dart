import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Custom project card widget
class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String path;
  final Color outerBoxColor;
  final Color innerBoxColor;
  final Color titleColor;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.path,
    required this.titleColor,
    required this.outerBoxColor,
    required this.innerBoxColor,
  });

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Project icon/image placeholder
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                color: innerBoxColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset(path, scale: 7),
              ),
            ),

            const SizedBox(height: 20),

            // Title
            Text(
              textAlign: TextAlign.center,
              title,
              style: GoogleFonts.robotoSlab(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: titleColor,
              ),
            ),

            const SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: titleColor.withOpacity(0.75),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
