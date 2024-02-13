import '../../../core/app_export.dart';/// This class is used in the [dynamicviewgrid_item_widget] screen.
class DynamicviewgridItemModel {DynamicviewgridItemModel({this.image, this.title, this.text, this.price1, this.price2, this.id, }) { image = image  ?? Rx(ImageConstant.img32eb245aE30d4);title = title  ?? Rx("-20%");text = text  ?? Rx("Lorem ipsum dolor sit amet consectetur");price1 = price1  ?? Rx("16,00");price2 = price2  ?? Rx("20,00");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? text;

Rx<String>? price1;

Rx<String>? price2;

Rx<String>? id;

 }
