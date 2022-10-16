import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_dev_task/models/home_model/deal_of_day.dart';
import 'package:flutter_dev_task/models/home_model/home_model.dart';
import 'package:get/get.dart';

class MainControler extends GetxController {
  MainControler();

  @override
  Future<void> onInit() async {
    super.onInit();
    readJson();
  }

  var homeModel = HomeModel(home: null).obs;
  var isDataLoading = false.obs;

  readJson() async {
    try {
      isDataLoading(true);
      final String response =
          await rootBundle.loadString('lib/data/home_data.json');
      await Future.delayed(const Duration(seconds: 1)).whenComplete(() async {
        final data = await json.decode(response);
        homeModel = Rx(HomeModel.fromJson(data));
        _deals = (homeModel.value.home?.dealOfDay ?? []).toList().obs;

        log('home : $homeModel');
      });
    } catch (e) {
      log('$e');
    } finally {
      isDataLoading(false);
    }
  }

  RxList<DealOfDay> _deals = <DealOfDay>[].obs;
  RxList<DealOfDay> get dealsOfDay => _deals;

  toggleFavorites(DealOfDay deal) {
    if (_deals.isNotEmpty) {
      final index = _deals.indexOf(deal);
      bool isFav = !deal.isFav!;

      _deals[index] = deal.copyWith(isFav: isFav);
      update();
    }
  }
}
