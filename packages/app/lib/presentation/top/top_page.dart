import 'dart:math';

import 'package:components/components.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<StatefulWidget> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  final List<Human> _humans = [];

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < 10; i++) {
      final randomName = "Tanaka No.${i}";
      final randomAge = Random().nextInt(100);
      _humans.add(Human(randomName, randomAge));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Page'),
      ),
      body: ListView.builder(
        itemCount: _humans.length,
        itemBuilder: (context, index) {
          return HumanInformationCard(human: _humans[index]);
        },
      ),
    );
  }
}
