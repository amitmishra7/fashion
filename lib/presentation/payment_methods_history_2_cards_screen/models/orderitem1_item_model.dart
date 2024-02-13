import '../../../core/app_export.dart';/// This class is used in the [orderitem1_item_widget] screen.
class Orderitem1ItemModel {Orderitem1ItemModel({this.imageClass, this.title1, this.title2, this.title3, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgBagPrimary);title1 = title1  ?? Rx("April,19 2020 12:31");title2 = title2  ?? Rx("Order #92287157");title3 = title3  ?? Rx("-14,00");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? title1;

Rx<String>? title2;

Rx<String>? title3;

Rx<String>? id;

 }
