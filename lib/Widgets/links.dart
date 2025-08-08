import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(String link) async {
  final Uri url = Uri.parse(link);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}

// Links
void openResume() => _launchUrl(
  "https://drive.google.com/file/d/1NHg3nFaw4KXdSD6tJTEnJqe3tMprXqoI/view?usp=sharing",
);

void openDonor() => _launchUrl(
  "https://drive.google.com/drive/folders/1nZQA-95EQXEWau9zRGaKY4AExW_ru8xC?usp=sharing",
);

void openArcNotes() => _launchUrl(
  "https://drive.google.com/drive/folders/1o5istUxljV4F_SKDtjfQmeQfP5RGbmO7?usp=sharing",
);

void certAWS() => _launchUrl(
  "https://drive.google.com/file/d/1zmaD5mvF0aC0DYILJQzdfwa12a_hLjJe/view?usp=sharing",
);

void certLinux() => _launchUrl(
  "https://drive.google.com/file/d/1wrKjKxqgegi3c-UE1i_tTN4tLh1ZHObR/view?usp=sharing",
);

void certCyberSecurity() => _launchUrl(
  "https://drive.google.com/file/d/1TnBnk-lpJ9d29Pn8oXk5c0V9EJPjyEux/view?usp=sharing",
);

void openGithub() => _launchUrl("https://github.com/astronicker");

void openLinkedin() => _launchUrl("https://www.linkedin.com/in/astronicker");

void openAndroidBureau() => _launchUrl("https://www.androidbureau.com");

void openGithubDonor() => _launchUrl("https://github.com/astronicker/Donor");
