import '../../../core/app_export.dart';/// This class is used in the [itemlist_item_widget] screen.
class ItemlistItemModel {ItemlistItemModel({this.image1, this.image2, this.text1, this.text2, this.id, }) { image1 = image1  ?? Rx(ImageConstant.imgC68139e1363c4);image2 = image2  ?? Rx(ImageConstant.img45d808e05e004);text1 = text1  ?? Rx("Lorem ipsum dolor sit amet consectetur.");text2 = text2  ?? Rx("17,00");id = id  ?? Rx(""); }

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? id;

 }
