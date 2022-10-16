import 'package:flutter/material.dart';

import '../shared.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.name,
    required this.description,
    required this.total,
    required this.quantity,
    required this.increaseTap,
    required this.decreaseTap,
  }) : super(key: key);
  final String name;
  final String description;
  final double total;
  final int quantity;
  final GestureTapCallback increaseTap;
  final GestureTapCallback decreaseTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ImageContainer(
          width: 56,
          height: 56,
        ),
        kSizedBoxW20,
        SizedBox(
          height: 56,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    name,
                    style: kTextStyle10Bold,
                  ),
                  Text(
                    description,
                    style: kTextStyle9Normal.copyWith(
                      color: kSecondaryTextColor,
                    ),
                  ),
                  Text(
                    '\$ $total',
                    style: kTextStyle18Normal.copyWith(
                      color: kPriceTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: decreaseTap,
              child: Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  color: kLightBlueColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.remove_rounded),
              ),
            ),
            Padding(
              padding: edgeInsetsH10,
              child: Text(
                '$quantity',
                style: kTextStyle18Bold.copyWith(
                  color: kMainTextColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: increaseTap,
              child: Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  color: kLightBlueColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.add_rounded),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
