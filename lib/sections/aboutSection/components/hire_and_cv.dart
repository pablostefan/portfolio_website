import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/MyButton.dart';

class HireAndCv extends StatelessWidget {
  const HireAndCv({Key? key, required this.size}) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(flex: 8,),
        MyButton(
          size: size,
          imageSrc: "assets/images/hand.png",
          text: "Contratar",
          press: () => htlmOpenEmail,
        ),
        const Spacer(),
        MyButton(
          size: size,
          imageSrc: "assets/images/download.png",
          text: "Currículo",
          press: () => htlmOpenCurriculo,
          color: myPink,
        ),
        const Spacer(flex: 8,),
      ],
    );
  }
}
