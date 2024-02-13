import '../../../core/app_export.dart';/// This class is used in the [discover_item_widget] screen.
class DiscoverItemModel {DiscoverItemModel({this.image1, this.image2, this.text1, this.text2, this.id, }) { image1 = image1  ?? Rx(ImageConstant.img1e7ba25e18a34);image2 = image2  ?? Rx(ImageConstant.img4aa32357E9fc4129x130);text1 = text1  ?? Rx("Lorem ipsum dolor sit amet consectetur.");text2 = text2  ?? Rx("125,00");id = id  ?? Rx(""); }

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? id;

 }
