import 'package:flutter/material.dart';
import 'package:flutter_dev_task/layouts/home/controller/home_controller.dart';

import 'package:get/get.dart';

import '../../shared/shared.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(HomeController());
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: GetX(
        init: cartController,
        builder: (controller) {
          if (!controller.isDataLoading.value) {
            return Padding(
              padding: edgeInsetsAll20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cart',
                    style: kTextStyle15Bold.copyWith(
                      color: kMainTextColor,
                    ),
                  ),
                  kSizedBoxH20,
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final cartItem = controller.cart[index];
                        return CartItem(
                          name: cartItem.itemName ?? '',
                          description: cartItem.description ?? '',
                          quantity: cartItem.quantity ?? 0,
                          total: cartItem.totalPrice ?? 0,
                          increaseTap: () {
                            controller.increasQuantity(cartItem);
                          },
                          decreaseTap: () {
                            controller.decreaseQuantity(cartItem);
                          },
                        );
                      },
                      separatorBuilder: (_, __) => kSizedBoxH10,
                      itemCount: controller.cart.length,
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
