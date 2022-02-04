import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import '../../../models/MyTitle.dart';

class RecentProjectTitle extends StatelessWidget {
  const RecentProjectTitle({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.9,
      child: MyTitle(
        size: size,
        subTitle: "Meus Trabalhos",
        title: "Projetos Recentes",
        color: myYellow,
      ),
    );
  }
}
