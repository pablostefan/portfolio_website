import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Knowledge.dart';
import '../../../models/custom_page_route.dart';
import '../../../pages/about_page.dart';

class KnowledgeCard extends StatefulWidget {
  const KnowledgeCard({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;
  @override
  State<KnowledgeCard> createState() => _KnowledgeCardState();
}

bool isHover = false;

class _KnowledgeCardState extends State<KnowledgeCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          CustomPageRoute(
            child: AboutPage(
              icon: knowledge[widget.index].image,
              title: knowledge[widget.index].title,
              text: knowledge[widget.index].text,
              subTitle: "Conhecimentos",
              color: knowledge[widget.index].color,
            ),
          ),
        );
      },
      onHover: (value) => setState(() {
        isHover = value;
      }),
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        height: imageServiceCard(widget.size),
        width: imageServiceCard(widget.size),
        margin: EdgeInsets.symmetric(
          vertical: serciCardMargin(widget.size),
        ),
        decoration: BoxDecoration(
          color: knowledge[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [boxShadown],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            AnimatedContainer(
              padding: EdgeInsets.all(buttonPadding(widget.size) * .3),
              duration: duration,
              height: imageServiceCard(widget.size) / 2,
              width: imageServiceCard(widget.size) / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [if (isHover) boxShadownService],
              ),
              child: Image.asset(
                knowledge[widget.index].image,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            Text(
              knowledge[widget.index].title,
              style: TextStyle(
                fontSize: fontSizeLittle(widget.size),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
