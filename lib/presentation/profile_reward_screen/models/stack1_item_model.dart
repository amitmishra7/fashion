import '../../../core/app_export.dart';/// This class is used in the [stack1_item_widget] screen.
class Stack1ItemModel {Stack1ItemModel({this.liveImage, this.userIcon, this.id, }) { liveImage = liveImage  ?? Rx(ImageConstant.imgBfc6a77aC42f4);userIcon = userIcon  ?? Rx(ImageConstant.imgUserOnerrorcontainer);id = id  ?? Rx(""); }

Rx<String>? liveImage;

Rx<String>? userIcon;

Rx<String>? id;

 }
