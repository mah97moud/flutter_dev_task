import 'package:flutter/material.dart';
import 'package:flutter_dev_task/models/home_model/address.dart';
import 'package:flutter_dev_task/models/home_model/category.dart';
import 'package:flutter_dev_task/models/home_model/deal_of_day.dart';
import 'package:flutter_dev_task/screens/main/controller/main_controller.dart';
import 'package:get/get.dart';

import '../shared.dart';

class BigDealItem extends StatelessWidget {
  const BigDealItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFFEC8BD),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 130,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
            ),
          ),
          Container(
            padding: edgeInsetsAll10,
            height: 130,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mega',
                          style: kTextStyle11Normal.copyWith(
                            color: kRedColor,
                          ),
                        ),
                        Text.rich(
                          const TextSpan(
                            text: 'WHOPP',
                            children: [
                              TextSpan(
                                text: 'E',
                                style: TextStyle(color: kRedColor),
                              ),
                              TextSpan(text: 'R'),
                            ],
                          ),
                          style: kTextStyle31Bold.copyWith(
                            color: const Color(0xFF21114B),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$ 13',
                          style: kTextStyle18Bold.copyWith(
                            color: kMainColor,
                          ),
                        ),
                        kSizedBoxW10,
                        Text(
                          '\$ 18',
                          style: kTextStyle18Normal.copyWith(
                            decoration: TextDecoration.lineThrough,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '* Available until 24 December 2020',
                      style: kTextStyle9Normal.copyWith(
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DealListView extends StatelessWidget {
  const DealListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: Get.put(MainControler()),
      builder: (controller) {
        final deals = controller.dealsOfDay;
        return SizedBox(
          height: 90,
          child: ListView.separated(
            itemCount: deals.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final deal = deals[index];
              return DealItem(
                deal: deal,
              );
            },
          ),
        );
      },
    );
  }
}

class DealItem extends StatelessWidget {
  const DealItem({
    Key? key,
    required this.deal,
  }) : super(key: key);
  final DealOfDay deal;

  @override
  Widget build(BuildContext context) {
    final mainController = Get.put(MainControler());
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(int.tryParse(deal.color ?? '0') ?? 0),
              ),
            ),
            Positioned(
              top: -5,
              left: -5,
              child: GestureDetector(
                onTap: () {
                  mainController.toggleFavorites(deal);
                },
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    deal.isFav != null && deal.isFav!
                        ? Icons.favorite_rounded
                        : Icons.favorite_border,
                    color: deal.isFav != null && deal.isFav!
                        ? kMainColor
                        : const Color(0xFFCBCBCB),
                    size: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: edgeInsetsAll10,
          height: 90,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    deal.title ?? '',
                    style: kTextStyle10Bold,
                  ),
                  Text(
                    deal.description ?? '',
                    style: kTextStyle10Normal,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 10,
                      ),
                      Text(
                        deal.address ?? '',
                        style: kTextStyle9Normal,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '\$ ${deal.price}',
                        style: kTextStyle13Bold.copyWith(
                          color: kMainColor,
                        ),
                      ),
                      kSizedBoxW10,
                      Text(
                        '\$ ${deal.prevPrice}',
                        style: kTextStyle13Normal.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: const Color(0xFF464646),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    Key? key,
    required this.categories,
  }) : super(key: key);
  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.separated(
        itemCount: categories.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryItem(
            label: category.title ?? '',
            color: int.tryParse(category.color ?? '0') ?? 0,
          );
        },
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.color,
    required this.label,
  }) : super(key: key);
  final int color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(color),
          ),
        ),
        kSizedBoxH10,
        Text(
          label,
          style: kTextStyle10Normal,
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    this.showAll = false,
    required this.sectionTitle,
    this.total = 0,
  }) : super(key: key);
  final bool showAll;
  final String sectionTitle;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: kTextStyle11Bold.copyWith(
            color: const Color(0xFF474749),
          ),
        ),
        if (showAll)
          Text(
            'See All ($total)',
            style: kTextStyle11Bold.copyWith(
              color: const Color(0xFF929294),
            ),
          ),
      ],
    );
  }
}

class AddressSection extends StatelessWidget {
  const AddressSection({
    Key? key,
    required this.addressList,
  }) : super(key: key);
  final List<Address> addressList;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // AddressIitem(
        //   title: 'Home Address',
        //   address: 'Mustafa St. No:2',
        //   subAddress: 'Street x12',
        // ),
        // AddressIitem(
        //   title: 'Office Address',
        //   address: 'Axis Istanbul, B2 Blok',
        //   subAddress: 'Floor 2, Office 11',
        // ),

        ...addressList.map(
          (e) => AddressIitem(
            title: e.title ?? '',
            address: e.address ?? '',
            subAddress: e.subAdd ?? '',
          ),
        ),
      ],
    );
  }
}

class AddressIitem extends StatelessWidget {
  const AddressIitem({
    Key? key,
    required this.title,
    required this.address,
    required this.subAddress,
  }) : super(key: key);
  final String title;
  final String address;
  final String subAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edgeInsetsAll5,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFF1F1F1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const ImageContainer(),
          Container(
            padding: edgeInsetsH10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: kTextStyle11Bold,
                ),
                Text(
                  address,
                  style: kTextStyle9Normal,
                ),
                Text(
                  subAddress,
                  style: kTextStyle9Normal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFFE0E0E0),
          ),
        ),
        prefixIcon: const Icon(
          Icons.search,
        ),
        hintText: 'Search in thousands of products',
        hintStyle: const TextStyle(
          fontSize: 11,
        ),
        filled: true,
        fillColor: kLightGreyColor,
      ),
    );
  }
}
