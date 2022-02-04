import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/RecentProject.dart';
import 'card_recent_project.dart';

class ListRecentProjects extends StatelessWidget {
  const ListRecentProjects({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width * 0.9,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: myLittlePadding(size)*1.5,
        runSpacing: myLittlePadding(size)*1.5,
        children: List.generate(
          recentProject.length,
          (index) => RecentProjectCard(
            size: size,
            index: index,
          ),
        ),
      ),
    );
  }
}
