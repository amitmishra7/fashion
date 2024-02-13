import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy2_item_widget] screen.
class Viewhierarchy2ItemModel {Viewhierarchy2ItemModel({this.dynamicIconButton, this.dynamicText, this.id, }) { dynamicIconButton = dynamicIconButton  ?? Rx(ImageConstant.imgIconFeatherCheck);dynamicText = dynamicText  ?? Rx("Dresses");id = id  ?? Rx(""); }

Rx<String>? dynamicIconButton;

Rx<String>? dynamicText;

Rx<String>? id;

 }
