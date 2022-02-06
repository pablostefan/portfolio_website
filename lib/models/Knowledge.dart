import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class Knowledge {
  final String title, image, text;
  final Color color;

  Knowledge({
    required this.title,
    required this.image,
    required this.color,
    required this.text,
  });
}

// For demo list of service
List<Knowledge> knowledge = [
  Knowledge(
    title: "SQL",
    image: "assets/images/desktop.png",
    color: myBlue,
    text: sql,
  ),
  Knowledge(
    title: "Python",
    image: "assets/images/graphic.png",
    color: myGreen,
    text: python,
  ),
  Knowledge(
    title: "Flutter",
    image: "assets/images/flutter.png",
    color: myBlue3,
    text: flutter,
  ),
  Knowledge(
    title: "UI/UX Design",
    image: "assets/images/ui.png",
    color: myYellow,
    text: uiUxDesing,
  ),
  Knowledge(
    title: "API",
    image: "assets/images/api.png",
    color: myPink,
    text: aboutApi,
  ),
  Knowledge(
    title: "Git/GitHub",
    image: "assets/images/octocat.png",
    color: myBlue2,
    text: aboutGit,
  ),
];
