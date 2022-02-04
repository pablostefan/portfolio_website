import 'package:flutter/material.dart';
import 'components/hire_me_card.dart';
import 'components/list_recent_projects.dart';
import 'components/recent_project_title.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: size.height * 0.08,
      ),
      width: size.width,
      height: size.height * .92,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.2),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: SizedBox(
        width: size.width * 0.9,
        child: Column(
          children: [
            HireMeCard(size: size),
            const Spacer(),
            RecentProjectTitle(size: size),
            const Spacer(flex: 2),
            ListRecentProjects(size: size),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
