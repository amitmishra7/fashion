import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.userImage, this.titleText, this.newText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.img098576f0C6f34);titleText = titleText  ?? Rx("1780");newText = newText  ?? Rx("New");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? titleText;

Rx<String>? newText;

Rx<String>? id;

 }
