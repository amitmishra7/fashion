import 'ellipse_item_model.dart';import '../../../core/app_export.dart';import 'stack_item_model.dart';/// This class defines the variables used in the [profile_to_receive_notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileToReceiveNotificationModel {Rx<List<EllipseItemModel>> ellipseItemList = Rx(List.generate(9,(index) => EllipseItemModel()));

Rx<List<StackItemModel>> stackItemList = Rx([StackItemModel(liveImage:ImageConstant.imgBfc6a77aC42f4.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),StackItemModel(liveImage:ImageConstant.img0e33d0844dab4.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),StackItemModel(liveImage:ImageConstant.img9bf6accf20464.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),StackItemModel(liveImage:ImageConstant.img14d5128d5fff4.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs)]);

 }
