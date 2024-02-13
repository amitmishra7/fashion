import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userImage1, this.userImage2, this.loremIpsumText, this.titleText, this.id, }) { userImage1 = userImage1  ?? Rx(ImageConstant.imgCa5932f9898f4);userImage2 = userImage2  ?? Rx(ImageConstant.img6d305338A2a14129x130);loremIpsumText = loremIpsumText  ?? Rx("Lorem ipsum dolor sit amet consectetur.");titleText = titleText  ?? Rx("17,00");id = id  ?? Rx(""); }

Rx<String>? userImage1;

Rx<String>? userImage2;

Rx<String>? loremIpsumText;

Rx<String>? titleText;

Rx<String>? id;

 }
