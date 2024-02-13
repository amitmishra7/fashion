import '../../../core/app_export.dart';import 'viewhierarchy1_item_model.dart';import 'ebeedfour_item_model.dart';/// This class defines the variables used in the [shop_clothing_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShopClothingModel {Rx<List<Viewhierarchy1ItemModel>> viewhierarchy1ItemList = Rx([Viewhierarchy1ItemModel(dynamicText: "Dresses".obs),Viewhierarchy1ItemModel(dynamicText: "Pants".obs),Viewhierarchy1ItemModel(dynamicText: "Skirts".obs),Viewhierarchy1ItemModel(dynamicText: "Shorts".obs),Viewhierarchy1ItemModel(dynamicText: "Jackets".obs),Viewhierarchy1ItemModel(dynamicText: "Hoodies".obs),Viewhierarchy1ItemModel(dynamicText: "Shirts".obs),Viewhierarchy1ItemModel(dynamicText: "Polo".obs),Viewhierarchy1ItemModel(dynamicText: "T-shirts".obs),Viewhierarchy1ItemModel(dynamicText: "Tunics".obs)]);

Rx<List<EbeedfourItemModel>> ebeedfourItemList = Rx([EbeedfourItemModel(image2:ImageConstant.img32eb245aE30d4.obs,text1: "Lorem ipsum dolor sit amet consectetur".obs,text2: "17,00".obs),EbeedfourItemModel(image2:ImageConstant.img02643accCfe94171x155.obs,text1: "Lorem ipsum dolor sit amet consectetur".obs,text2: "17,00".obs)]);

 }
