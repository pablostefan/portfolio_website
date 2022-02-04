import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.size,
    required this.imageSrc,
    required this.text,
    required this.press,
    this.backGroundColor = Colors.white,
    this.color = const Color(0xFFD9FFFC),
    this.fontColor = Colors.black,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;
  final Size size;
  final Color color;
  final Color backGroundColor;
  final Color fontColor;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(buttonPadding(size))),
        shape: MaterialStateProperty.all(const StadiumBorder()),
        side: MaterialStateProperty.resolveWith<BorderSide>(
            (Set<MaterialState> states) {
          return BorderSide(color: color);
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) return color;
          return backGroundColor; // Defer to the widget's default.
        }),
      ),
      onPressed: press(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(imageSrc, height: myButtonImage(size)),
          Text(
            "  " + text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSizeLittle(size),
                color: Colors.black),
          )
        ],
      ),
    );
  }
}
