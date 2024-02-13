import '../../../core/app_export.dart';/// This class is used in the [productlist3_item_widget] screen.
class Productlist3ItemModel {Productlist3ItemModel({this.image, this.image1, this.text, this.title, this.price, this.id, }) { image = image  ?? Rx(ImageConstant.img738744ce99a44);image1 = image1  ?? Rx(ImageConstant.img92caf77e01b541);text = text  ?? Rx("Lorem ipsum dolor sit amet consectetur.");title = title  ?? Rx("Pink, Size M");price = price  ?? Rx("17,00");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? image1;

Rx<String>? text;

Rx<String>? title;

Rx<String>? price;

Rx<String>? id;

 }
