import 'package:flutter/material.dart';
import 'package:harry_potter/src/domain/model/character.dart';

class HpDetailsPage extends StatelessWidget {
  const HpDetailsPage({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(character.name)),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(character.biography),
      ),
    ),
  );
}
