import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Knowledge.dart';
import 'knowledge_card.dart';

class ListKnowledgeCard extends StatelessWidget {
  const ListKnowledgeCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: myLittlePadding(size) * 5,
      runSpacing: myLittlePadding(size),
      alignment: WrapAlignment.center,
      children: List.generate(
        knowledge.length,
        (index) => KnowledgeCard(
          size: size,
          index: index,
        ),
      ),
    );
  }
}
