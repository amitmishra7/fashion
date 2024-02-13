import '../../../core/app_export.dart';/// This class is used in the [orderdetails1_item_widget] screen.
class Orderdetails1ItemModel {Orderdetails1ItemModel({this.image2, this.text1, this.text2, this.id, }) { image2 = image2  ?? Rx(ImageConstant.img45d808e05e0041);text1 = text1  ?? Rx("Lorem ipsum dolor sit amet consectetur.");text2 = text2  ?? Rx("Order #92287157");id = id  ?? Rx(""); }

Rx<String>? image2;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? id;

 }
