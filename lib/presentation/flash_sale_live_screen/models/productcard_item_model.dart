import '../../../core/app_export.dart';/// This class is used in the [productcard_item_widget] screen.
class ProductcardItemModel {ProductcardItemModel({this.productImage, this.discountTitle, this.descriptionText, this.priceTitle1, this.priceTitle2, this.id, }) { productImage = productImage  ?? Rx(ImageConstant.img922654839e7e4171x155);discountTitle = discountTitle  ?? Rx("-20%");descriptionText = descriptionText  ?? Rx("Lorem ipsum dolor sit amet consectetur");priceTitle1 = priceTitle1  ?? Rx("16,00");priceTitle2 = priceTitle2  ?? Rx("20,00");id = id  ?? Rx(""); }

Rx<String>? productImage;

Rx<String>? discountTitle;

Rx<String>? descriptionText;

Rx<String>? priceTitle1;

Rx<String>? priceTitle2;

Rx<String>? id;

 }
