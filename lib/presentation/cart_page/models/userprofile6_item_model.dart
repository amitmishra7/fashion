import '../../../core/app_export.dart';import 'color5_item_model.dart';/// This class is used in the [userprofile6_item_widget] screen.
class Userprofile6ItemModel {Userprofile6ItemModel({this.userImage, this.userImage1, this.thumbsUp, this.loremIpsumDolor, this.title, this.color5ItemList, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.img486cee221ce54);userImage1 = userImage1  ?? Rx(ImageConstant.img2289c231211f4101x121);thumbsUp = thumbsUp  ?? Rx(ImageConstant.imgThumbsUp);loremIpsumDolor = loremIpsumDolor  ?? Rx("Lorem ipsum dolor sit amet consectetur.");title = title  ?? Rx("17,00");color5ItemList = color5ItemList  ?? Rx(List.generate(2,(index) =>Color5ItemModel()));id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? userImage1;

Rx<String>? thumbsUp;

Rx<String>? loremIpsumDolor;

Rx<String>? title;

Rx<List<Color5ItemModel>>? color5ItemList;

Rx<String>? id;

 }
