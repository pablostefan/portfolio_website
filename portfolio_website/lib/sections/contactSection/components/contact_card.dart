import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'contact_buttons.dart';
import 'contact_info.dart';
import 'contact_card_title.dart';

class ContacCard extends StatelessWidget {
  const ContacCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: contacBoxH(size),
      width: contacBoxW(size),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 241, 241),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [boxShadown],
      ),
      child: Column(
        children: [
          ContactCardTitle(size: size),
          const Spacer(flex: 2),
          ContactInfo(size: size),
          const Spacer(flex: 2,),
          ContactButtons(size: size),
          const Spacer(),
        ],
      ),
    );
  }
}
