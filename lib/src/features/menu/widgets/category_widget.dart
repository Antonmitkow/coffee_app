import 'package:coffee/src/features/menu/widgets/category.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 4,
      direction: Axis.horizontal,
      children: [
        Category(
          label: 'Черный кофе',
        ),
        Category(
          label: 'Кофе с молоком',
        ),
        Category(
          label: 'Чай',
        ),
        Category(
          label: 'Авторские напитки',
        ),
      ],
    );
  }
}
