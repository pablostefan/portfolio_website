import 'package:flutter/material.dart';
import '../../../constants.dart';


class AboutImage extends StatelessWidget {
  const AboutImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.02),
      child: Image.asset(
        "assets/images/developer.png",
        height: aboutImage(size),
        alignment: Alignment.topCenter,
      ),
    );
  }
}
