import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/product_variations_screen/models/product_variations_model.dart';/// A controller class for the ProductVariationsScreen.
///
/// This class manages the state of the ProductVariationsScreen, including the
/// current productVariationsModelObj
class ProductVariationsController extends GetxController {Rx<ProductVariationsModel> productVariationsModelObj = ProductVariationsModel().obs;

 }
