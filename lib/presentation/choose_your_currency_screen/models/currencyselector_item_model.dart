import '../../../core/app_export.dart';/// This class is used in the [currencyselector_item_widget] screen.
class CurrencyselectorItemModel {CurrencyselectorItemModel({this.title, this.image, this.id, }) { title = title  ?? Rx(" USD");image = image  ?? Rx(ImageConstant.imgIconFeatherCheck);id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? image;

Rx<String>? id;

 }
