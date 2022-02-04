import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/RecentProject.dart';

class RecentProjectCard extends StatefulWidget {
  const RecentProjectCard({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  State<RecentProjectCard> createState() => _RecentProjectCardState();
}

bool isHover = false;

class _RecentProjectCardState extends State<RecentProjectCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        htlmOpenProject(recentProject[widget.index].link);
      },
      onHover: (value) => setState(() {
        isHover = value;
      }),
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        height: imageWorkCardHihg(widget.size),
        width: imageWorkCardWidth(widget.size),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [boxShadown]),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: imageWorkCardWidth(widget.size) * .5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 191, 255, 250),
                    Color.fromARGB(255, 255, 197, 197)
                  ],
                ),
              ),
              child: Image.asset(
                recentProject[widget.index].image,
                height: imageWorkCardHihg(widget.size) - 20,
              ),
            ),
            Container(
              width: imageWorkCardWidth(widget.size) * .5,
              padding: EdgeInsets.symmetric(horizontal: imageWorkCardWidth(widget.size) * .05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    recentProject[widget.index].category.toUpperCase(),
                    style: TextStyle(
                      fontSize: fontSizeLittle(widget.size),
                    ),
                  ),
                  Text(
                    recentProject[widget.index].title,
                    style: TextStyle(
                      fontSize: fontSizeMean(widget.size),
                    ),
                  ),
                  Text(
                    "Detalhes",
                    style: TextStyle(
                      fontSize: fontSizeLittle(widget.size),
                    ),
                  ),
                ],
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
