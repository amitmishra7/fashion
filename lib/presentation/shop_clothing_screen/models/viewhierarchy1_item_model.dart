import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {Viewhierarchy1ItemModel({this.dynamicText, this.id, }) { dynamicText = dynamicText  ?? Rx("Dresses");id = id  ?? Rx(""); }

Rx<String>? dynamicText;

Rx<String>? id;

 }
