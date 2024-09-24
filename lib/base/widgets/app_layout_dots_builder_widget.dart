import 'package:flutter/material.dart';

class AppLayoutDotsBuilderWidget extends StatelessWidget {
  final int randomDivider;
  final double detachWidth;

  const AppLayoutDotsBuilderWidget ({super.key, required this.randomDivider, this.detachWidth = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate((constraints.constrainWidth() / randomDivider).floor(), (index) => SizedBox(
          width: detachWidth,
          height: 1,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        )),
      );
    });
  }
}
