import '../../../core/app_export.dart';/// This class is used in the [userprofile9_item_widget] screen.
class Userprofile9ItemModel {Userprofile9ItemModel({this.userText, this.loremText, this.titleText, this.id, }) { userText = userText  ?? Rx("1");loremText = loremText  ?? Rx("Lorem ipsum dolor sit amet consectetur.");titleText = titleText  ?? Rx("17,00");id = id  ?? Rx(""); }

Rx<String>? userText;

Rx<String>? loremText;

Rx<String>? titleText;

Rx<String>? id;

 }
