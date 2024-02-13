import '../../../core/app_export.dart';import 'color7_item_model.dart';/// This class is used in the [userprofile7_item_widget] screen.
class Userprofile7ItemModel {Userprofile7ItemModel({this.userImage, this.userImage1, this.thumbsUp, this.loremIpsumDolor, this.title, this.color7ItemList, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.img486cee221ce54);userImage1 = userImage1  ?? Rx(ImageConstant.img2289c231211f43);thumbsUp = thumbsUp  ?? Rx(ImageConstant.imgThumbsUp);loremIpsumDolor = loremIpsumDolor  ?? Rx("Lorem ipsum dolor sit amet consectetur.");title = title  ?? Rx("17,00");color7ItemList = color7ItemList  ?? Rx(List.generate(2,(index) =>Color7ItemModel()));id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? userImage1;

Rx<String>? thumbsUp;

Rx<String>? loremIpsumDolor;

Rx<String>? title;

Rx<List<Color7ItemModel>>? color7ItemList;

Rx<String>? id;

 }
