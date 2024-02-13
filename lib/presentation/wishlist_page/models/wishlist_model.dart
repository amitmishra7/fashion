import 'recentlyviewedlist_item_model.dart';import '../../../core/app_export.dart';import 'wishlistitems_item_model.dart';/// This class defines the variables used in the [wishlist_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistModel {Rx<List<RecentlyviewedlistItemModel>> recentlyviewedlistItemList = Rx(List.generate(9,(index) => RecentlyviewedlistItemModel()));

Rx<List<WishlistitemsItemModel>> wishlistitemsItemList = Rx([WishlistitemsItemModel(image:ImageConstant.img8ebb25c340734.obs,thumbsUp:ImageConstant.imgThumbsUpPink300.obs,text: "Lorem ipsum dolor sit amet consectetur.".obs,title: "17,00".obs),WishlistitemsItemModel(image:ImageConstant.img486cee221ce54.obs,text: "Lorem ipsum dolor sit amet consectetur.".obs),WishlistitemsItemModel(image:ImageConstant.img486cee221ce54.obs,text: "Lorem ipsum dolor sit amet consectetur.".obs,title: "27,00".obs),WishlistitemsItemModel(image:ImageConstant.img486cee221ce54.obs,text: "Lorem ipsum dolor sit amet consectetur.".obs,title: "19,00".obs),WishlistitemsItemModel(image:ImageConstant.img486cee221ce54.obs,text: "Lorem ipsum dolor sit amet consectetur.".obs,title: "17,00".obs)]);

 }
