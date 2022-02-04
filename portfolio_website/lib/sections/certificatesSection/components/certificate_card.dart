import 'package:flutter/material.dart';
import 'package:portfolio_website/models/Certificate.dart';
import '../../../constants.dart';

class CertificateCard extends StatelessWidget {
  const CertificateCard({
    Key? key,
    required this.index,
    required this.size,
  }) : super(key: key);

  final int index;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          certificates[index].title,
          style: TextStyle(
            fontSize: fontSizeLittle(size),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [boxShadownCertificate],
          ),
          child: Image.asset(
            certificates[index].cetificateImage,
            height: contacBox(size)*.665,
          ),
        ),
      ],
    );
  }
}
