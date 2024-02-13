import '../../../core/app_export.dart';/// This class is used in the [view_item_widget] screen.
class ViewItemModel {ViewItemModel({this.userImage, this.titleText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.img2289c231211f4103x99);titleText = titleText  ?? Rx("-20%");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? titleText;

Rx<String>? id;

 }
