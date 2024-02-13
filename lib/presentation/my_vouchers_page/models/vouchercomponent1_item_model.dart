import '../../../core/app_export.dart';/// This class is used in the [vouchercomponent1_item_widget] screen.
class Vouchercomponent1ItemModel {Vouchercomponent1ItemModel({this.voucherTitle, this.validUntilDate, this.firstPurchaseImage, this.firstPurchaseTitle, this.discountText, this.id, }) { voucherTitle = voucherTitle  ?? Rx("Voucher");validUntilDate = validUntilDate  ?? Rx("Valid Until 5.16.20");firstPurchaseImage = firstPurchaseImage  ?? Rx(ImageConstant.imgIconPrimary);firstPurchaseTitle = firstPurchaseTitle  ?? Rx("First Purchase");discountText = discountText  ?? Rx("5% off for your next order");id = id  ?? Rx(""); }

Rx<String>? voucherTitle;

Rx<String>? validUntilDate;

Rx<String>? firstPurchaseImage;

Rx<String>? firstPurchaseTitle;

Rx<String>? discountText;

Rx<String>? id;

 }
