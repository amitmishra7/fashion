import 'package:amit_s_application2/core/app_export.dart';import 'package:amit_s_application2/presentation/product_sale_screen/models/product_sale_model.dart';/// A controller class for the ProductSaleScreen.
///
/// This class manages the state of the ProductSaleScreen, including the
/// current productSaleModelObj
class ProductSaleController extends GetxController {Rx<ProductSaleModel> productSaleModelObj = ProductSaleModel().obs;

Rx<int> sliderIndex = 0.obs;

 }
