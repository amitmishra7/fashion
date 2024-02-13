import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {ViewhierarchyItemModel({this.image1, this.image2, this.image3, this.title, this.image4, this.text1, this.id, }) { image1 = image1  ?? Rx(ImageConstant.img532c6dcf29ca475x75);image2 = image2  ?? Rx(ImageConstant.img74c5b250Bcb7475x75);image3 = image3  ?? Rx(ImageConstant.img0f26e045Aa02475x75);title = title  ?? Rx("Clothing");image4 = image4  ?? Rx(ImageConstant.imgA82f28818414475x75);text1 = text1  ?? Rx("109");id = id  ?? Rx(""); }

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? image3;

Rx<String>? title;

Rx<String>? image4;

Rx<String>? text1;

Rx<String>? id;

 }
