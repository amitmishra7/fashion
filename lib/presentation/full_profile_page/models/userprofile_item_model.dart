import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.userImage1, this.userImage2, this.clothing, this.title, this.image, this.widget, this.id, }) { userImage1 = userImage1  ?? Rx(ImageConstant.img532c6dcf29ca4);userImage2 = userImage2  ?? Rx(ImageConstant.img74c5b250Bcb74);clothing = clothing  ?? Rx(ImageConstant.img0f26e045Aa024);title = title  ?? Rx("Clothing");image = image  ?? Rx(ImageConstant.imgA82f288184144);widget = widget  ?? Rx("109");id = id  ?? Rx(""); }

Rx<String>? userImage1;

Rx<String>? userImage2;

Rx<String>? clothing;

Rx<String>? title;

Rx<String>? image;

Rx<String>? widget;

Rx<String>? id;

 }
