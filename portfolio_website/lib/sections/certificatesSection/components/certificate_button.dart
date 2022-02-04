import 'package:flutter/material.dart';
import 'my_certificates.dart';

class CertificateButton extends StatelessWidget {
  const CertificateButton({
    Key? key,
    required this.size,
    required this.icon,
    required this.next,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final int next;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * .05,
      child: IconButton(
        iconSize: 20,
        onPressed: () {
          sslKey.currentState!.focusToItem(
            sslKey.currentState!.previousIndex + next,
          );
        },
        icon: Icon(icon),
      ),
    );
  }
}
