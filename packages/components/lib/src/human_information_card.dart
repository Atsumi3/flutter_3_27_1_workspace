import 'package:core/core.dart';
import 'package:flutter/material.dart';

class HumanInformationCard extends StatelessWidget {
  const HumanInformationCard({required this.human, super.key});

  final Human human;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(human.name),
        subtitle: Text('Age: ${human.age}'),
      ),
    );
  }
}
