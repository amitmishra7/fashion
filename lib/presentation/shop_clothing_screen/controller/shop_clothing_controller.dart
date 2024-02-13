import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/shop_clothing_screen/models/shop_clothing_model.dart';import 'package:flutter/material.dart';/// A controller class for the ShopClothingScreen.
///
/// This class manages the state of the ShopClothingScreen, including the
/// current shopClothingModelObj
class ShopClothingController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ShopClothingModel> shopClothingModelObj = ShopClothingModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
