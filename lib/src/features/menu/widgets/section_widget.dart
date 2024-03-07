import 'package:coffee/src/features/menu/models/card.dart';
import 'package:coffee/src/features/menu/widgets/coffee_card.dart';
import 'package:flutter/material.dart';

class SectionWidget extends StatelessWidget {
  final List<CardModel> cards;
  const SectionWidget({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    return CoffeeCard(card: cards.first);
  }
}
