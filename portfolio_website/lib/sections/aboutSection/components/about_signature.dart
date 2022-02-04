import 'package:flutter/material.dart';
import '../../../constants.dart';

class AboutSignature extends StatelessWidget {
  const AboutSignature({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Minha história",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: aboutSignatureFont(size),
            ),
          ),
          Image.asset(
            "assets/images/assinatura.png",
            height: aboutSignatureImage(size),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
