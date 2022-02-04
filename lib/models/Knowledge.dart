import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class Knowledge {
  final int id;
  final String title, image, text;
  final Color color;

  Knowledge({
    required this.id,
    required this.title,
    required this.image,
    required this.color,
    required this.text,
  });
}

// For demo list of service
List<Knowledge> knowledge = [
  Knowledge(
    id: 1,
    title: "SQL",
    image: "assets/images/desktop.png",
    color: myBlue,
    text: sql,
  ),
  Knowledge(
    id: 2,
    title: "Python",
    image: "assets/images/graphic.png",
    color: myGreen,
    text: python,
  ),
  Knowledge(
    id: 3,
    title: "UI/UX Design",
    image: "assets/images/ui.png",
    color: myYellow,
    text: uiUxDesing,
  ),
  Knowledge(
    id: 4,
    title: "Flutter",
    image: "assets/images/Intreaction_design.png",
    color: myPink,
    text: flutter,
  ),
];
