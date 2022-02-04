import 'package:flutter/material.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: size.height,
      ),
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.jpg"),
        ),
      ),
      child: SizedBox(
        width: size.width * 0.9,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            if(size.width>600)
            PersonPic(size: size),
            const Menu(),
          ],
        ),
      ),
    );
  }
}
