import '../../../core/app_export.dart';import 'productlist2_item_model.dart';import 'productmaterial_item_model.dart';import 'userprofile3_item_model.dart';import 'userprofile4_item_model.dart';/// This class defines the variables used in the [product_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductFullModel {Rx<List<Productlist2ItemModel>> productlist2ItemList = Rx([Productlist2ItemModel(babac:ImageConstant.imgCd71f1e136204.obs)]);

Rx<List<ProductmaterialItemModel>> productmaterialItemList = Rx(List.generate(2,(index) =>ProductmaterialItemModel()));

Rx<List<Userprofile3ItemModel>> userprofile3ItemList = Rx([Userprofile3ItemModel(userImage:ImageConstant.img45d808e05e004171x155.obs,text1: "Lorem ipsum dolor sit amet consectetur".obs,text2: "17,00".obs),Userprofile3ItemModel(userImage:ImageConstant.img50c51a0fBc204171x155.obs,text1: "Lorem ipsum dolor sit amet consectetur".obs,text2: "17,00".obs),Userprofile3ItemModel(text1: "Lorem ipsum dolor sit amet consectetur".obs,text2: "17,00".obs),Userprofile3ItemModel(text1: "Lorem ipsum dolor sit amet consectetur".obs,text2: "17,00".obs)]);

Rx<List<Userprofile4ItemModel>> userprofile4ItemList = Rx([Userprofile4ItemModel(userImage1:ImageConstant.img314456d3Bbcc4.obs,userImage2:ImageConstant.img2289c231211f42.obs,titleText1: "1780".obs,titleText2: "New".obs),Userprofile4ItemModel(userImage1:ImageConstant.img314456d3Bbcc4.obs,userImage2:ImageConstant.img098576f0C6f34.obs,titleText1: "1780".obs,titleText2: "Sale".obs),Userprofile4ItemModel(userImage1:ImageConstant.img314456d3Bbcc4.obs,userImage2:ImageConstant.img922654839e7e4103x93.obs,titleText1: "1780".obs,titleText2: "Hot".obs),Userprofile4ItemModel(titleText1: "1780".obs,titleText2: "Hot".obs)]);

 }
