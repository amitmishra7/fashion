import '../../../core/app_export.dart';/// This class is used in the [placeholderone2_item_widget] screen.
class Placeholderone2ItemModel {Placeholderone2ItemModel({this.placeholderOne, this.id, }) { placeholderOne = placeholderOne  ?? Rx(ImageConstant.imgImage);id = id  ?? Rx(""); }

Rx<String>? placeholderOne;

Rx<String>? id;

 }
