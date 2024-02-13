import 'ellipselist_item_model.dart';import '../../../core/app_export.dart';import 'userprofile5_item_model.dart';/// This class defines the variables used in the [wishlist_empty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistEmptyModel {Rx<List<EllipselistItemModel>> ellipselistItemList = Rx(List.generate(9,(index) => EllipselistItemModel()));

Rx<List<Userprofile5ItemModel>> userprofile5ItemList = Rx([Userprofile5ItemModel(userImage1:ImageConstant.img1a8ef3de15a84.obs,userImage2:ImageConstant.img098576f0C6f34103x93.obs,titleText1: "1780".obs,titleText2: "New".obs),Userprofile5ItemModel(userImage1:ImageConstant.img1a8ef3de15a84.obs,userImage2:ImageConstant.img922654839e7e41.obs,titleText1: "1780".obs,titleText2: "Sale".obs),Userprofile5ItemModel(userImage1:ImageConstant.img1a8ef3de15a84.obs,userImage2:ImageConstant.img45d808e05e004103x93.obs,titleText1: "1780".obs,titleText2: "Hot".obs),Userprofile5ItemModel(titleText1: "1780".obs,titleText2: "Hot".obs)]);

 }
