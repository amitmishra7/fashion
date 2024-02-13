import '../../../core/app_export.dart';/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {OrderdetailsItemModel({this.orderImage1, this.orderImage2, this.orderImage3, this.orderImage4, this.orderImage5, this.orderImage6, this.orderTitle, this.orderItemsLabel, this.orderDelivery, this.orderStatus, this.id, }) { orderImage1 = orderImage1  ?? Rx(ImageConstant.imgA1132a961e9c4);orderImage2 = orderImage2  ?? Rx(ImageConstant.img45d808e05e00439x39);orderImage3 = orderImage3  ?? Rx(ImageConstant.imgA1132a961e9c4);orderImage4 = orderImage4  ?? Rx(ImageConstant.img922654839e7e439x39);orderImage5 = orderImage5  ?? Rx(ImageConstant.img97f1225e6c8f4);orderImage6 = orderImage6  ?? Rx(ImageConstant.img50c51a0fBc20439x80);orderTitle = orderTitle  ?? Rx("Order #92287157");orderItemsLabel = orderItemsLabel  ?? Rx("3 items");orderDelivery = orderDelivery  ?? Rx("Standard Delivery");orderStatus = orderStatus  ?? Rx("Packed");id = id  ?? Rx(""); }

Rx<String>? orderImage1;

Rx<String>? orderImage2;

Rx<String>? orderImage3;

Rx<String>? orderImage4;

Rx<String>? orderImage5;

Rx<String>? orderImage6;

Rx<String>? orderTitle;

Rx<String>? orderItemsLabel;

Rx<String>? orderDelivery;

Rx<String>? orderStatus;

Rx<String>? id;

 }
