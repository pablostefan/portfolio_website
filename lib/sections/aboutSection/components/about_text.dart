import 'package:flutter/material.dart';
import '../../../constants.dart';

class AboutText extends StatelessWidget {
  const AboutText({
    Key? key,
    required this.text,
    required this.size,
  }) : super(key: key);

  final Size size;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: fontSizeMean(size),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: fontSizeMean(size)*.8,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
