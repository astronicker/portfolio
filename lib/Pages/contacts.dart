import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/Widgets/links.dart';
import 'package:portfolio/Widgets/responsive.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController messageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  bool isSending = false;

  Future<void> sendMessage() async {
    setState(() => isSending = true);

    final response = await http.post(
      Uri.parse('https://formsubmit.co/99e9cc656bf8b9a723a45f3b1c020e71'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {
        'email': emailController.text.trim(),
        'phone': phoneController.text.trim(),
        'message': messageController.text.trim(),
        '_captcha': 'false',
        '_subject': 'New message from portfolio',
      },
    );

    setState(() => isSending = false);

    if (response.statusCode == 200 || response.statusCode == 302) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Message sent successfully!')));

      messageController.clear();
      emailController.clear();
      phoneController.clear();
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to send message.')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.all(screenWidth < 950 ? 25 : 50),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Contact',
                style: TextStyle(
                  fontFamily: 'RobotoSlab',
                  color: colorScheme.primary,
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ResponsiveRowColumn(
                breakpoint: 1270,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width:
                        screenWidth < 1270 ? screenWidth : screenWidth / 3.15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _ContactBox(
                          onTap:
                              () => ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Copied to clipboard')),
                              ),
                          title: 'Phone',
                          subtitle: '+91 9589623264',
                          icon: FontAwesomeIcons.phone,
                        ),
                        const SizedBox(height: 5),
                        _ContactBox(
                          onTap: () {
                            openEmail();
                          },
                          title: 'Mail',
                          subtitle: 'meayushshukla07@gmail.com',
                          icon: FontAwesomeIcons.envelope,
                        ),
                        const SizedBox(height: 5),
                        _ContactBox(
                          onTap: openGithub,
                          title: 'GitHub',
                          subtitle: 'astronicker',
                          icon: FontAwesomeIcons.github,
                        ),
                        const SizedBox(height: 5),
                        _ContactBox(
                          onTap: openLinkedin,
                          title: 'LinkedIn',
                          subtitle: 'Ayush Shukla',
                          icon: FontAwesomeIcons.linkedin,
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: ResponsiveRowColumn(
                      breakpoint: 1270,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: screenWidth < 1270 ? screenWidth : 320,
                          height: 400,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: TextFormField(
                            maxLines: null,
                            minLines: 1,
                            controller: messageController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Write your message here...',
                            ),
                          ),
                        ),
                        const SizedBox(width: 15, height: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              width: screenWidth < 1270 ? screenWidth : 320,
                              height: 80,
                              decoration: BoxDecoration(
                                color: colorScheme.surfaceContainerHighest,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: TextFormField(
                                  maxLines: null,
                                  minLines: 1,
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your email...',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              padding: EdgeInsets.all(15),
                              width: screenWidth < 1270 ? screenWidth : 320,
                              height: 80,
                              decoration: BoxDecoration(
                                color: colorScheme.surfaceContainerHighest,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Center(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],

                                  maxLength: 10,
                                  maxLines: null,
                                  minLines: 1,
                                  controller: phoneController,
                                  buildCounter:
                                      (
                                        _, {
                                        required currentLength,
                                        required isFocused,
                                        maxLength,
                                      }) => null,

                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your phone number...',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenWidth < 1270 ? 15 : 65),
                            GestureDetector(
                              onTap:
                                  isSending
                                      ? null
                                      : () {
                                        if (emailController.text.isEmpty ||
                                            phoneController.text.isEmpty ||
                                            phoneController.text.length < 10 ||
                                            messageController.text.isEmpty) {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Please fill in all details.',
                                              ),
                                              duration: Duration(seconds: 1),
                                            ),
                                          );
                                          return;
                                        }

                                        sendMessage();
                                      },
                              child: Container(
                                width: screenWidth < 1270 ? screenWidth : 320,
                                height: 150,
                                decoration: BoxDecoration(
                                  color:
                                      isSending
                                          ? colorScheme.primaryContainer
                                          : colorScheme.primary,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Center(
                                  child:
                                      isSending
                                          ? CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                  colorScheme.onPrimary,
                                                ),
                                          )
                                          : Text(
                                            'Send message',
                                            style: TextStyle(
                                              color: colorScheme.onPrimary,
                                              fontWeight: FontWeight.bold,
                                              fontSize: (screenWidth / 50)
                                                  .clamp(16, 20),
                                            ),
                                          ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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

class _ContactBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onTap;

  const _ContactBox({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final ValueNotifier<bool> isHovered = ValueNotifier(false);
    double screenWidth = MediaQuery.of(context).size.width;

    return ValueListenableBuilder(
      valueListenable: isHovered,
      builder: (context, value, child) {
        return MouseRegion(
          onEnter: (_) => isHovered.value = true,
          onExit: (_) => isHovered.value = false,
          child: GestureDetector(
            onTapDown: (_) => isHovered.value = true,
            onTapUp: (_) => isHovered.value = false,
            onTap: onTap,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color:
                          isHovered.value
                              ? colorScheme.primaryFixedDim
                              : colorScheme.tertiaryFixedDim,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(icon),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.montserrat(
                            color:
                                isHovered.value
                                    ? colorScheme.primary
                                    : colorScheme.tertiary,
                            fontSize: (screenWidth / 50).clamp(16, 20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle,
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: (screenWidth / 50).clamp(16, 20),
                            color: colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
