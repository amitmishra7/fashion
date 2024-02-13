import 'color_item_model.dart';import '../../../core/app_export.dart';import 'dceaaffiftyfour_item_model.dart';import 's_item_model.dart';/// This class defines the variables used in the [product_variations_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductVariationsModel {Rx<List<ColorItemModel>> colorItemList = Rx(List.generate(2,(index) =>ColorItemModel()));

Rx<List<DceaaffiftyfourItemModel>> dceaaffiftyfourItemList = Rx([DceaaffiftyfourItemModel(dCEAAFFiftyFour:ImageConstant.img37d533ceAaf54.obs,check:ImageConstant.imgIconFeatherCheck.obs),DceaaffiftyfourItemModel(dCEAAFFiftyFour:ImageConstant.imgF77d0cf010a84.obs),DceaaffiftyfourItemModel(dCEAAFFiftyFour:ImageConstant.imgF77d0cf010a84.obs),DceaaffiftyfourItemModel(dCEAAFFiftyFour:ImageConstant.imgF77d0cf010a84.obs)]);

Rx<List<SItemModel>> sItemList = Rx(List.generate(6,(index) =>SItemModel()));

 }
