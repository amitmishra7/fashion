import '../../../core/app_export.dart';/// This class is used in the [dynamicview_item_widget] screen.
class DynamicviewItemModel {DynamicviewItemModel({this.image2, this.title, this.text1, this.text2, this.text3, this.id, }) { image2 = image2  ?? Rx(ImageConstant.img4aa32357E9fc4);title = title  ?? Rx("-20%");text1 = text1  ?? Rx("Lorem ipsum dolor sit amet consectetur");text2 = text2  ?? Rx("16,00");text3 = text3  ?? Rx("20,00");id = id  ?? Rx(""); }

Rx<String>? image2;

Rx<String>? title;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? text3;

Rx<String>? id;

 }
