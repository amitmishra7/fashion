import '../../../core/app_export.dart';/// This class is used in the [cardcomponent_item_widget] screen.
class CardcomponentItemModel {CardcomponentItemModel({this.cardImage, this.closeImage, this.cardNumberText, this.cardExpiryText, this.cardHolderNameText, this.cardHolderDateText, this.id, }) { cardImage = cardImage  ?? Rx(ImageConstant.imgMastercard);closeImage = closeImage  ?? Rx(ImageConstant.imgCloseIndigo50);cardNumberText = cardNumberText  ?? Rx("****  ****  **** ");cardExpiryText = cardExpiryText  ?? Rx("1579");cardHolderNameText = cardHolderNameText  ?? Rx("Amanda Morgan");cardHolderDateText = cardHolderDateText  ?? Rx("12/22");id = id  ?? Rx(""); }

Rx<String>? cardImage;

Rx<String>? closeImage;

Rx<String>? cardNumberText;

Rx<String>? cardExpiryText;

Rx<String>? cardHolderNameText;

Rx<String>? cardHolderDateText;

Rx<String>? id;

 }
