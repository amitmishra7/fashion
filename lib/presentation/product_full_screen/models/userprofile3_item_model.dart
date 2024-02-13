import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.userImage, this.text1, this.text2, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.img45d808e05e004171x155);text1 = text1  ?? Rx("Lorem ipsum dolor sit amet consectetur");text2 = text2  ?? Rx("17,00");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? id;

 }
