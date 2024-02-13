import '../../../core/app_export.dart';/// This class is used in the [card_item_widget] screen.
class CardItemModel {CardItemModel({this.cardImage1, this.cardImage2, this.cardTitle1, this.cardTitle2, this.cardSubtitle1, this.cardSubtitle2, this.id, }) { cardImage1 = cardImage1  ?? Rx(ImageConstant.imgMastercard);cardImage2 = cardImage2  ?? Rx(ImageConstant.imgCloseIndigo50);cardTitle1 = cardTitle1  ?? Rx("****  ****  **** ");cardTitle2 = cardTitle2  ?? Rx("1579");cardSubtitle1 = cardSubtitle1  ?? Rx("Amanda Morgan");cardSubtitle2 = cardSubtitle2  ?? Rx("12/22");id = id  ?? Rx(""); }

Rx<String>? cardImage1;

Rx<String>? cardImage2;

Rx<String>? cardTitle1;

Rx<String>? cardTitle2;

Rx<String>? cardSubtitle1;

Rx<String>? cardSubtitle2;

Rx<String>? id;

 }
