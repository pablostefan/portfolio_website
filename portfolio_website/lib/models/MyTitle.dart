import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
    Key? key,
    required this.size,
    required this.title,
    required this.subTitle,
    required this.color,
  }) : super(key: key);
  final Size size;
  final String title, subTitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: serviceBox(size),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: size.width * 0.02),
                padding: EdgeInsets.only(bottom: size.height * 0.06),
                width: size.width * 0.0045,
                height: size.height * 0.098,
                color: color,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeMean(size),
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSizeBig(size),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
