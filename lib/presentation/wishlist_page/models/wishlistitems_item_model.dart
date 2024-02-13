import '../../../core/app_export.dart';import 'color3_item_model.dart';/// This class is used in the [wishlistitems_item_widget] screen.
class WishlistitemsItemModel {WishlistitemsItemModel({this.image, this.thumbsUp, this.text, this.title, this.color3ItemList, this.id, }) { image = image  ?? Rx(ImageConstant.img8ebb25c340734);thumbsUp = thumbsUp  ?? Rx(ImageConstant.imgThumbsUpPink300);text = text  ?? Rx("Lorem ipsum dolor sit amet consectetur.");title = title  ?? Rx("17,00");color3ItemList = color3ItemList  ?? Rx(List.generate(2,(index) =>Color3ItemModel()));id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? thumbsUp;

Rx<String>? text;

Rx<String>? title;

Rx<List<Color3ItemModel>>? color3ItemList;

Rx<String>? id;

 }
