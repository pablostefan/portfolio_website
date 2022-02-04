import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/MyTitle.dart';

class ContactTitle extends StatelessWidget {
  const ContactTitle({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .9,
      child: MyTitle(
        size: size,
        title: "Contate-me",
        subTitle: "Entre em contato",
        color: myGreen,
      ),
    );
  }
}
