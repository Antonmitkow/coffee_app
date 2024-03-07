import 'package:coffee/src/constants.dart';
import 'package:coffee/src/features/menu/widgets/category_widget.dart';
import 'package:coffee/src/features/menu/widgets/section_widget.dart';
import 'package:coffee/src/theme/theme.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 100),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CustomScrollView(
                slivers: [
                  SliverFixedExtentList(
                      delegate: SliverChildListDelegate([
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            CategoryWidget(),
                          ],
                        ),
                      ]),
                      itemExtent: 45),
                  SliverFixedExtentList(
                      delegate: SliverChildListDelegate([
                        Text(
                          'Черный кофе',
                          style: theme.textTheme.bodyLarge,
                        ),
                      ]),
                      itemExtent: 60),
                  SliverGrid(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return SectionWidget(
                          cards: constantCard,
                        );
                      }, childCount: 3),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              mainAxisExtent: 205,
                              mainAxisSpacing: 10.0,
                              crossAxisSpacing: 10,
                              childAspectRatio: 4)),
                ],
              ),
            )),
      ),
    );
  }
}
