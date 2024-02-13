import '../../../core/app_export.dart';import 'viewhierarchy2_item_model.dart';import 'chipview_item_model.dart';import 'chipview2_item_model.dart';/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {Rx<List<Viewhierarchy2ItemModel>> viewhierarchy2ItemList = Rx([Viewhierarchy2ItemModel(dynamicIconButton:ImageConstant.imgIconFeatherCheck.obs,dynamicText: "Dresses".obs),Viewhierarchy2ItemModel(dynamicIconButton:ImageConstant.imgIconFeatherCheck.obs,dynamicText: "Pants".obs),Viewhierarchy2ItemModel(dynamicIconButton:ImageConstant.imgIconFeatherCheck.obs,dynamicText: "T-shirts".obs),Viewhierarchy2ItemModel(dynamicText: "Skirts".obs),Viewhierarchy2ItemModel(dynamicText: "Shorts".obs),Viewhierarchy2ItemModel(dynamicText: "Jackets".obs),Viewhierarchy2ItemModel(dynamicText: "Hoodies".obs),Viewhierarchy2ItemModel(dynamicText: "Shirts".obs),Viewhierarchy2ItemModel(dynamicText: "Polo".obs),Viewhierarchy2ItemModel(dynamicText: "Tunics".obs)]);

Rx<List<ChipviewItemModel>> chipviewItemList = Rx(List.generate(3,(index) =>ChipviewItemModel()));

Rx<List<Chipview2ItemModel>> chipview2ItemList = Rx(List.generate(4,(index) =>Chipview2ItemModel()));

 }
