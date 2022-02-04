import 'package:flutter/material.dart';
import '../../../constants.dart';

class ContactCardTitle extends StatelessWidget {
  const ContactCardTitle({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.085,
      width: contacBoxW(size),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        boxShadow: [boxShadown],
      ),
      child: Transform.translate(
        offset: Offset(0, size.height * 0.020),
        child: Row(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/my_icon.png",
              height: contactIcon(size),
            ),
            Text(
              "  Vamos começar um projeto juntos?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSizeMean(size),
              ),
            ),
            const Spacer(flex: 15),
          ],
        ),
      ),
    );
  }
}
