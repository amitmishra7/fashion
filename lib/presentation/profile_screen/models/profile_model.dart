import 'recentlyviewed_item_model.dart';import '../../../core/app_export.dart';import 'profile_item_model.dart';/// This class defines the variables used in the [profile_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {Rx<List<RecentlyviewedItemModel>> recentlyviewedItemList = Rx(List.generate(9,(index) => RecentlyviewedItemModel()));

Rx<List<ProfileItemModel>> profileItemList = Rx([ProfileItemModel(liveImage:ImageConstant.imgBfc6a77aC42f4.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),ProfileItemModel(liveImage:ImageConstant.img0e33d0844dab4.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),ProfileItemModel(liveImage:ImageConstant.img9bf6accf20464.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),ProfileItemModel(liveImage:ImageConstant.img14d5128d5fff4.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs)]);

 }
