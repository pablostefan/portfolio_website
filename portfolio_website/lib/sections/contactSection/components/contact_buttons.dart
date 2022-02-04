import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/MyButton.dart';

class ContactButtons extends StatelessWidget {
  const ContactButtons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyButton(
          size: size,
          imageSrc: "images/git_icon.png",
          text: "GitHub",
          press: () => htlmOpenGitHub,
          color: const Color.fromARGB(255, 255, 130, 130),
        ),
        MyButton(
          size: size,
          imageSrc: "images/linkedin.png",
          text: "LinkedIn",
          press: () => htlmOpenLinkedin,
          color: const Color.fromARGB(255, 34, 115, 253),
        ),
        MyButton(
          size: size,
          imageSrc: "images/email.png",
          text: " E-mail",
          press: () => htlmOpenEmail,
          color: const Color.fromARGB(255, 245, 200, 110),
        ),
        MyButton(
          size: size,
          imageSrc: "images/whatsapp-icon.png",
          text: "WhatsApp",
          press: () => htlmOpenWhatsApp,
          color: const Color.fromARGB(255, 50, 255, 77),
        ),
      ],
    );
  }
}
