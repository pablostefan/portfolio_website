import 'package:flutter/material.dart';
import '../../../constants.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Image.asset(
        "assets/images/person.png",
        width: personImage(size),
        alignment: Alignment.bottomRight,
      ),
    );
  }
}
