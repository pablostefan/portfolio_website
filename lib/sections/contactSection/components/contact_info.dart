import 'package:flutter/material.dart';
import 'my_info.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key, required this.size}) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          MyInfo(
            icon: Icons.account_box,
            infoTitle: "Nome:",
            infoText: "Pablo Stefan Gomes Pereira",
            size: size,
          ),
          SizedBox(height: size.height * .02),
          MyInfo(
            icon: Icons.mail,
            infoTitle: "E-mail:",
            infoText: "pablo.stefan744@gmail.com",
            size: size,
          ),
          SizedBox(height: size.height * .02),
          MyInfo(
            icon: Icons.phone_android_rounded,
            infoTitle: "Telefone:",
            infoText: "(84) 99620-1300",
            size: size,
          ),
        ],
      ),
    );
  }
}
