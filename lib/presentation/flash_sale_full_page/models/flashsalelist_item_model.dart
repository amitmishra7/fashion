import '../../../core/app_export.dart';/// This class is used in the [flashsalelist_item_widget] screen.
class FlashsalelistItemModel {FlashsalelistItemModel({this.image1, this.image2, this.title1, this.title2, this.id, }) { image1 = image1  ?? Rx(ImageConstant.img314456d3Bbcc4);image2 = image2  ?? Rx(ImageConstant.img2289c231211f41);title1 = title1  ?? Rx("1780");title2 = title2  ?? Rx("New");id = id  ?? Rx(""); }

Rx<String>? image1;

Rx<String>? image2;

Rx<String>? title1;

Rx<String>? title2;

Rx<String>? id;

 }
