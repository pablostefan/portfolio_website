import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/MyButton.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -size.height * 0.07),
      child: Container(
        width: hireMeCard(size),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 250, 247, 234),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [boxShadown],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Spacer(
              flex: 4,
            ),
            Image.asset(
              "assets/images/email.png",
              height: hireMeImage(size),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: hireMePadding(size),
              ),
              child: SizedBox(
                height: hireMeDivider(size),
                child: const VerticalDivider(
                  color: Color.fromARGB(255, 255, 224, 100),
                ),
              ),
            ),
            const Spacer(),
            if (removeText(size))
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Vamos começar um novo projeto?",
                        style: TextStyle(
                          fontSize: fastontSizeTitle(size),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Entre em contato",
                        style: TextStyle(
                          fontSize: fastontSizeTitle(size),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            const Spacer(
              flex: 4,
            ),
            MyButton(
              size: size,
              imageSrc: "assets/images/hand.png",
              text: "Contratar",
              press: () => htlmOpenEmail,
              color: myYellowButton,
              backGroundColor: const Color.fromARGB(255, 250, 247, 234),
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
