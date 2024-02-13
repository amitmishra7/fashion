import '../../../core/app_export.dart';/// This class is used in the [dynamictext_item_widget] screen.
class DynamictextItemModel {DynamictextItemModel({this.dynamicText, this.dynamicText1, this.id, }) { dynamicText = dynamicText  ?? Rx("Lorem ipsum dolor sit amet consectetur");dynamicText1 = dynamicText1  ?? Rx("17,00");id = id  ?? Rx(""); }

Rx<String>? dynamicText;

Rx<String>? dynamicText1;

Rx<String>? id;

 }
