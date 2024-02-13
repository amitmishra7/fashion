import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/product_screen/models/product_model.dart';/// A controller class for the ProductScreen.
///
/// This class manages the state of the ProductScreen, including the
/// current productModelObj
class ProductController extends GetxController {Rx<ProductModel> productModelObj = ProductModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
