import 'package:flutter/material.dart';
import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
    required this.icon,
    required this.infoTitle,
    required this.infoText,
    required this.size,
  }) : super(key: key);

  final IconData icon;
  final String infoTitle, infoText;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: fontSizeMean(size),
        ),
        Text(
          " " + infoTitle,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSizeLittle(size) * 1.1),
        ),
        Text(
          " " + infoText,
          style: TextStyle(fontSize: fontSizeLittle(size)),
        ),
      ],
    );
  }
}
