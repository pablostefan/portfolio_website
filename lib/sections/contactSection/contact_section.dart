import 'package:flutter/material.dart';
import 'components/contact_card.dart';
import 'components/contact_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          image: AssetImage("assets/images/bg_img_2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const Spacer(),
          ContactTitle(size: size),
          const Spacer(),
          ContacCard(size: size),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}

