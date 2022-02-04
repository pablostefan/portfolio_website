import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Image.asset(
          "assets/images/icon.png",
          height: myIconSize(size) * .8,
        ),
        const Spacer(),
        GlassContent(size: size),
        const Spacer(
          flex: 5,
        ),
      ],
    );
  }
}
