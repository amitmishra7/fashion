import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/shop_screen/models/shop_model.dart';import 'package:flutter/material.dart';/// A controller class for the ShopScreen.
///
/// This class manages the state of the ShopScreen, including the
/// current shopModelObj
class ShopController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ShopModel> shopModelObj = ShopModel().obs;

Rx<int> sliderIndex = 0.obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
