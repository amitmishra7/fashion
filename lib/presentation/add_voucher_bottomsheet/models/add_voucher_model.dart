import '../../../core/app_export.dart';import 'vouchercomponent_item_model.dart';/// This class defines the variables used in the [add_voucher_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class AddVoucherModel {Rx<List<VouchercomponentItemModel>> vouchercomponentItemList = Rx([VouchercomponentItemModel(voucherTitle: "Voucher".obs,validUntil: "Valid Until 5.16.20".obs,firstPurchaseImage:ImageConstant.imgIconPrimary.obs,firstPurchaseTitle: "First Purchase".obs,discountText: "5% off for your next order".obs),VouchercomponentItemModel(voucherTitle: "Voucher".obs,validUntil: "Valid Until 6.20.20".obs,firstPurchaseImage:ImageConstant.imgThumbsUpPrimary.obs,firstPurchaseTitle: "Gift From Customer Care".obs,discountText: "15% off your next purchase".obs)]);

 }
