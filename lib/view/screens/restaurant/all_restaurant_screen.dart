import 'package:efood_multivendor/controller/restaurant_controller.dart';
import 'package:efood_multivendor/util/app_constants.dart';
import 'package:efood_multivendor/util/dimensions.dart';
import 'package:efood_multivendor/view/base/custom_app_bar.dart';
import 'package:efood_multivendor/view/base/product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllRestaurantScreen extends StatelessWidget {
  final bool isPopular;
  AllRestaurantScreen({@required this.isPopular});

  @override
  Widget build(BuildContext context) {
    if(isPopular) {
      Get.find<RestaurantController>().getPopularRestaurantList(false, 'all', false);
    }else {
      Get.find<RestaurantController>().getLatestRestaurantList(false, 'all', false);
    }

    return Scaffold(
      appBar: CustomAppBar(title: isPopular ? 'popular_restaurants'.tr : '${'new_on'.tr} ${AppConstants.APP_NAME}'),
      body: RefreshIndicator(
        onRefresh: () async {
          if(isPopular) {
            await Get.find<RestaurantController>().getPopularRestaurantList(
              true, Get.find<RestaurantController>().type, false,
            );
          }else {
            await Get.find<RestaurantController>().getLatestRestaurantList(
              true, Get.find<RestaurantController>().type, false,
            );
          }
        },
        child: Scrollbar(child: SingleChildScrollView(child: Center(child: SizedBox(
          width: Dimensions.WEB_MAX_WIDTH,
          child: GetBuilder<RestaurantController>(builder: (restController) {
            return ProductView(
              isRestaurant: true, products: null, noDataText: 'no_restaurant_available'.tr,
              restaurants: isPopular ? restController.popularRestaurantList : restController.latestRestaurantList,
              type: restController.type, onVegFilterTap: (String type) {
                if(isPopular) {
                  Get.find<RestaurantController>().getPopularRestaurantList(true, type, true);
                }else {
                  Get.find<RestaurantController>().getLatestRestaurantList(true, type, true);
                }
              },
            );
          }),
        )))),
      ),
    );
  }
}
