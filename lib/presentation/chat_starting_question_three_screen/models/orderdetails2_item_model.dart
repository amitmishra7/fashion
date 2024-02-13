import '../../../core/app_export.dart';/// This class is used in the [orderdetails2_item_widget] screen.
class Orderdetails2ItemModel {Orderdetails2ItemModel({this.orderTitle, this.orderItems, this.deliveryMethod, this.shipmentStatus, this.id, }) { orderTitle = orderTitle  ?? Rx("Order #92287157");orderItems = orderItems  ?? Rx("3 items");deliveryMethod = deliveryMethod  ?? Rx("Standard Delivery");shipmentStatus = shipmentStatus  ?? Rx("Shipped");id = id  ?? Rx(""); }

Rx<String>? orderTitle;

Rx<String>? orderItems;

Rx<String>? deliveryMethod;

Rx<String>? shipmentStatus;

Rx<String>? id;

 }
