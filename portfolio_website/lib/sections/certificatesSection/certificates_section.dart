import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import 'package:portfolio_website/models/MyTitle.dart';
import 'components/certificate_button.dart';
import 'components/my_certificates.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CertificateButton(
          size: size,
          icon: Icons.arrow_back_ios,
          next: -1,
        ),
        SizedBox(
          height: size.height,
          width: size.width * .9,
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              MyTitle(
                size: size,
                title: "Certificados",
                subTitle: "Certificados de conhecimentos",
                color: myBlue,
              ),
              const Spacer(flex: 2),
              CertificateList(
                size: size,
              ),
              const Spacer(flex: 3),
            ],
          ),
        ),
        CertificateButton(
          size: size,
          icon: Icons.arrow_forward_ios,
          next: 1,
        ),
      ],
    );
  }
}
