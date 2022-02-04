import 'package:flutter/material.dart';
import 'package:portfolio_website/sections/certificatesSection/certificates_section.dart';
import 'package:portfolio_website/sections/contactSection/contact_section.dart';
import '../sections/aboutSection/about_section.dart';
import '../sections/recentProjectSection/recent_projects_section.dart';
import '../sections/topSection/top_section.dart';

PageController pageController = PageController(initialPage: 0);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        controller: pageController,
        child: Column(
          children: [
            TopSection(
              size: size,
            ),
            AboutSection(
              size: size,
            ),
            RecentWorkSection(
              size: size,
            ),
            CertificatesSection(
              size: size,
            ),
            ContactSection(
              size: size,
            )
          ],
        ),
      ),
    );
  }
}
