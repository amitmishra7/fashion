import '../../../core/app_export.dart';/// This class is used in the [vouchercomponent_item_widget] screen.
class VouchercomponentItemModel {VouchercomponentItemModel({this.voucherTitle, this.validUntil, this.firstPurchaseImage, this.firstPurchaseTitle, this.discountText, this.id, }) { voucherTitle = voucherTitle  ?? Rx("Voucher");validUntil = validUntil  ?? Rx("Valid Until 5.16.20");firstPurchaseImage = firstPurchaseImage  ?? Rx(ImageConstant.imgIconPrimary);firstPurchaseTitle = firstPurchaseTitle  ?? Rx("First Purchase");discountText = discountText  ?? Rx("5% off for your next order");id = id  ?? Rx(""); }

Rx<String>? voucherTitle;

Rx<String>? validUntil;

Rx<String>? firstPurchaseImage;

Rx<String>? firstPurchaseTitle;

Rx<String>? discountText;

Rx<String>? id;

 }
