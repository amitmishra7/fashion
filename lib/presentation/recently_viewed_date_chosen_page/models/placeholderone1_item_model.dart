import '../../../core/app_export.dart';/// This class is used in the [placeholderone1_item_widget] screen.
class Placeholderone1ItemModel {Placeholderone1ItemModel({this.image1, this.image2, this.text1, this.text2, this.id, }) { image1 = image1  ?? Rx(ImageConstant.img7de82ade04de4);image2 = image2  ?? Rx(ImageConstant.img92caf77e01b54);text1 = text1  ?? Rx("Lorem ipsum dolor sit amet consectetur");text2 = text2  ?? Rx("17,00");id = id  ?? Rx(""); }

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? id;

 }
