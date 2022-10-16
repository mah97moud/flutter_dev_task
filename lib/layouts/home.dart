import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dev_task/layouts/home/controller/home_controller.dart';
import 'package:flutter_dev_task/shared/colors.dart';
import 'package:get/get.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return GetX(
      init: homeController,
      builder: (controller) => Scaffold(
        body: GetX(
          init: homeController,
          builder: (controller) {
            return homeController.currentScreen;
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFD93E11),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.shopping_bag_outlined),
              TotalValue(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: homeController.changeScreen,
          selectedItemColor: kSelectedColor,
          unselectedItemColor: kUnselectedColor,
          backgroundColor: kWhiteColor,
          currentIndex: homeController.pageIndex.value,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined),
              label: 'Grocery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}

class TotalValue extends StatelessWidget {
  const TotalValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController cartControler = Get.put(HomeController());
    return GetX(
      init: cartControler,
      builder: (controller) {
        log('${controller.totalInCart.value}');
        if (controller.totalInCart.value != 0) {
          return Text('${controller.totalInCart.value}');
        }
        return Container();
      },
    );
  }
}
