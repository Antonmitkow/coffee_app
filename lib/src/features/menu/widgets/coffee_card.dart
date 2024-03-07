import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffee/src/features/menu/models/card.dart';
import 'package:coffee/src/features/menu/widgets/buy_buttons.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatefulWidget {
  final CardModel card;
  const CoffeeCard({super.key, required this.card});

  @override
  State<CoffeeCard> createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.grey[100]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: CachedNetworkImage(
                imageUrl: widget.card.photo,
                fit: BoxFit.fitHeight,
                errorWidget: (_, __, ___) {
                  return const CircleAvatar(
                    backgroundImage: AssetImage('images/no_image.png'),
                    radius: 45,
                  );
                },
                placeholder: (_, __) {
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                widget.card.name,
                style: const TextTheme().bodyMedium,
              ),
            ),
            BuyButtonsWidget(
              cost: widget.card.cost,
            )
          ],
        ),
      ),
    );
  }
}
