import '../../../core/app_export.dart';/// This class is used in the [userprofile8_item_widget] screen.
class Userprofile8ItemModel {Userprofile8ItemModel({this.userImage1, this.userImage2, this.titleText1, this.titleText2, this.id, }) { userImage1 = userImage1  ?? Rx(ImageConstant.img1a8ef3de15a84);userImage2 = userImage2  ?? Rx(ImageConstant.img2289c231211f44);titleText1 = titleText1  ?? Rx("1780");titleText2 = titleText2  ?? Rx("New");id = id  ?? Rx(""); }

Rx<String>? userImage1;

Rx<String>? userImage2;

Rx<String>? titleText1;

Rx<String>? titleText2;

Rx<String>? id;

 }
