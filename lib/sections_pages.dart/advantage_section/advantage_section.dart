import 'package:app_responsivo/sections_pages.dart/advantage_section/build_advantage.dart';
import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  const AdvantagesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: const [
          BuildAdvantage(title: '+45.000 alunos', subtitle: 'Didática garantida'),
          BuildAdvantage(title: '+45.000 alunos', subtitle: 'Didática garantida'),
          BuildAdvantage(title: '+45.000 alunos', subtitle: 'Didática garantida'),
        ],
      ),
    );
  }
}
