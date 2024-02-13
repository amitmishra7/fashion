import '../../../core/app_export.dart';/// This class is used in the [vouchercomponent2_item_widget] screen.
class Vouchercomponent2ItemModel {Vouchercomponent2ItemModel({this.voucherTitle, this.daysLeft, this.validUntil, this.firstPurchaseImage, this.firstPurchaseTitle, this.discountText, this.id, }) { voucherTitle = voucherTitle  ?? Rx("Voucher");daysLeft = daysLeft  ?? Rx("3 days left");validUntil = validUntil  ?? Rx("Valid Until 4.21.20");firstPurchaseImage = firstPurchaseImage  ?? Rx(ImageConstant.imgIconPrimary);firstPurchaseTitle = firstPurchaseTitle  ?? Rx("First Purchase");discountText = discountText  ?? Rx("5% off for your next order");id = id  ?? Rx(""); }

Rx<String>? voucherTitle;

Rx<String>? daysLeft;

Rx<String>? validUntil;

Rx<String>? firstPurchaseImage;

Rx<String>? firstPurchaseTitle;

Rx<String>? discountText;

Rx<String>? id;

 }
