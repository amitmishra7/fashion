import 'ellipse1_item_model.dart';import '../../../core/app_export.dart';import 'stack2_item_model.dart';/// This class defines the variables used in the [profile_voucher_reminder_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileVoucherReminderModel {Rx<List<Ellipse1ItemModel>> ellipse1ItemList = Rx(List.generate(9,(index) => Ellipse1ItemModel()));

Rx<List<Stack2ItemModel>> stack2ItemList = Rx([Stack2ItemModel(liveImage:ImageConstant.imgBfc6a77aC42f4.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),Stack2ItemModel(liveImage:ImageConstant.img0e33d0844dab4175x104.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),Stack2ItemModel(liveImage:ImageConstant.img9bf6accf20464.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs),Stack2ItemModel(liveImage:ImageConstant.img14d5128d5fff4.obs,userImage:ImageConstant.imgUserOnerrorcontainer.obs)]);

 }
