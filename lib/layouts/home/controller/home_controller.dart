import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dev_task/screens/cart/cart_screen.dart';
import 'package:flutter_dev_task/screens/main/main_screen.dart';
import 'package:get/get.dart';

import '../../../models/cart_model/cart_item.dart';
import '../../../models/cart_model/cart_model.dart';

class HomeController extends GetxController {
  HomeController();

  @override
  Future<void> onInit() async {
    super.onInit();
    readCartJson();
  }

  var pageIndex = 0.obs;

  List<Widget> screens = const [
    MainScreen(),
    Center(child: Text('News')),
    Center(child: Text('Favourite')),
    CartScreen(),
  ];

  Widget get currentScreen => screens[pageIndex.value];

  void changeScreen(int index) {
    pageIndex.value = index;
  }

  var cartModel = CartModel(cartItems: null).obs;
  RxList<CartItem> cart = <CartItem>[].obs;
  var isDataLoading = false.obs;

  readCartJson() async {
    try {
      isDataLoading(true);
      final String response =
          await rootBundle.loadString('lib/data/cart_items.json');
      await Future.delayed(const Duration(seconds: 1)).whenComplete(() async {
        final data = await json.decode(response);
        cartModel = Rx(CartModel.fromJson(data));
        cart = cartModel.value.cartItems?.obs ?? <CartItem>[].obs;
        calculateTotal();
        log('cartModel : $cartModel');
      });
    } catch (e) {
      log(e.toString());
    } finally {
      isDataLoading(false);
    }
  }

  void increasQuantity(CartItem item) {
    final int index = cart.indexOf(item);
    int itemQuantity = item.quantity!;
    int newQuantity = itemQuantity + 1;
    double totalPrice = newQuantity * (item.price ?? 0);
    cart[index] = item.copyWith(quantity: newQuantity, totalPrice: totalPrice);
    calculateTotal();
    log('totalInCart:- $totalInCart');
  }

  void decreaseQuantity(CartItem item) {
    final int index = cart.indexOf(item);
    int itemQuantity = item.quantity!;
    if (itemQuantity != 1) {
      int newQuantity = itemQuantity - 1;
      double totalPrice = newQuantity * (item.price ?? 0);
      cart[index] =
          item.copyWith(quantity: newQuantity, totalPrice: totalPrice);
      calculateTotal();
    }
  }

  var totalInCart = 0.0.obs;

  Future<void> calculateTotal() async {
    totalInCart(
      cart.fold<double>(
        0,
        (previousValue, element) => previousValue + (element.totalPrice ?? 0),
      ),
    );
  }
}
