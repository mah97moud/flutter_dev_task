import 'package:flutter/material.dart';
import 'package:flutter_dev_task/screens/main/controller/main_controller.dart';
import 'package:get/get.dart';

import '../../shared/shared.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mainController = Get.put(MainControler());

    return Scaffold(
      appBar: const DefaultAppBar(),
      body: GetX(
        init: mainController,
        builder: (controller) {
          final home = controller.homeModel.value;
          return controller.isDataLoading.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: edgeInsetsAll20,
                    child: Column(
                      children: [
                        const SearchTextField(),
                        kSizedBoxH20,
                        AddressSection(
                          addressList: home.home?.address ?? [],
                        ),
                        kSizedBoxH20,
                        SectionTitle(
                          showAll: true,
                          sectionTitle: 'Explore by Category',
                          total: (home.home?.categories ?? []).length,
                        ),
                        kSizedBoxH10,
                        CategoryListView(
                          categories: home.home?.categories ?? [],
                        ),
                        kSizedBoxH20,
                        const SectionTitle(
                          sectionTitle: 'Deals of the day',
                        ),
                        kSizedBoxH10,
                        const DealListView(),
                        kSizedBoxH20,
                        const BigDealItem(),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
