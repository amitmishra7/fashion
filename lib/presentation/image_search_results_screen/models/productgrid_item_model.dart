import '../../../core/app_export.dart';/// This class is used in the [productgrid_item_widget] screen.
class ProductgridItemModel {ProductgridItemModel({this.image2, this.text1, this.text2, this.id, }) { image2 = image2  ?? Rx(ImageConstant.img32eb245aE30d4);text1 = text1  ?? Rx("Lorem ipsum dolor sit amet consectetur");text2 = text2  ?? Rx("17,00");id = id  ?? Rx(""); }

Rx<String>? image2;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? id;

 }
