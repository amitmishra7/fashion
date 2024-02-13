import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/shop_clothing_on_scroll_screen/models/shop_clothing_on_scroll_model.dart';import 'package:flutter/material.dart';/// A controller class for the ShopClothingOnScrollScreen.
///
/// This class manages the state of the ShopClothingOnScrollScreen, including the
/// current shopClothingOnScrollModelObj
class ShopClothingOnScrollController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ShopClothingOnScrollModel> shopClothingOnScrollModelObj = ShopClothingOnScrollModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
