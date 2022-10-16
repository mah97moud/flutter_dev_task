import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/main/controller/main_controller.dart';
import '../shared.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width ?? 40,
      width: width ?? 40,
      decoration: BoxDecoration(
        color: const Color(0xFFE3DDD6),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  const DefaultAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: Get.put(MainControler()),
      builder: (controller) {
        return controller.isDataLoading.value
            ? Container()
            : AppBar(
                title: Container(
                  width: 130,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: kMainColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 10,
                      ),
                      kSizedBoxW10,
                      Text(
                        controller.homeModel.value.home?.mainAddress?.address ??
                            '',
                        style: kTextStyle11Normal.copyWith(color: kWhiteColor),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Container(
                    height: 34,
                    width: 34,
                    margin: edgeInsetsOnlyR15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kMainColor.withOpacity(0.1),
                    ),
                  ),
                ],
              );
      },
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 65);
}
