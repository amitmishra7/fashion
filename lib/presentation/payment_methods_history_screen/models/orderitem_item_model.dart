import '../../../core/app_export.dart';/// This class is used in the [orderitem_item_widget] screen.
class OrderitemItemModel {OrderitemItemModel({this.imageClass, this.titleText, this.orderNumber, this.price, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgBagPrimary);titleText = titleText  ?? Rx("April,19 2020 12:31");orderNumber = orderNumber  ?? Rx("Order #92287157");price = price  ?? Rx("-14,00");id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? titleText;

Rx<String>? orderNumber;

Rx<String>? price;

Rx<String>? id;

 }
