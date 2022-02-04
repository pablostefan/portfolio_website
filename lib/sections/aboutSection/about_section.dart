import 'package:flutter/material.dart';
import 'package:portfolio_website/constants.dart';
import '../../models/MyTitle.dart';
import 'components/about_image.dart';
import 'components/about_signature.dart';
import 'components/about_text.dart';
import 'components/hire_and_cv.dart';
import 'components/list_knowledge_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      width: size.width * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutSignature(size: size),
              AboutText(
                size: size,
                text: aboutTextLife,
              ),
              if (size.width > 600) AboutImage(size: size),
              AboutText(
                size: size,
                text: aboutTextDev,
              ),
            ],
          ),
          const Spacer(),
          HireAndCv(
            size: size,
          ),
          const Spacer(),
          MyTitle(
            size: size,
            title: "Conhecimentos",
            subTitle: "Áreas de atuação",
            color: myPink,
          ),
          const Spacer(),
          ListKnowledgeCard(size: size),
          const Spacer(),
        ],
      ),
    );
  }
}
