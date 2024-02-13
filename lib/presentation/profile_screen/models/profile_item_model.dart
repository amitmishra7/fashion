import '../../../core/app_export.dart';/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {ProfileItemModel({this.liveImage, this.userImage, this.id, }) { liveImage = liveImage  ?? Rx(ImageConstant.imgBfc6a77aC42f4);userImage = userImage  ?? Rx(ImageConstant.imgUserOnerrorcontainer);id = id  ?? Rx(""); }

Rx<String>? liveImage;

Rx<String>? userImage;

Rx<String>? id;

 }
