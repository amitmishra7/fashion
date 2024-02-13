import '../../../core/app_export.dart';import 'vouchercomponent1_item_model.dart';/// This class defines the variables used in the [my_vouchers_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyVouchersModel {Rx<List<Vouchercomponent1ItemModel>> vouchercomponent1ItemList = Rx([Vouchercomponent1ItemModel(voucherTitle: "Voucher".obs,validUntilDate: "Valid Until 5.16.20".obs,firstPurchaseImage:ImageConstant.imgIconPrimary.obs,firstPurchaseTitle: "First Purchase".obs,discountText: "5% off for your next order".obs),Vouchercomponent1ItemModel(voucherTitle: "Voucher".obs,validUntilDate: "Valid Until 6.20.20".obs,firstPurchaseImage:ImageConstant.imgThumbsUpPrimary.obs,firstPurchaseTitle: "Gift From Customer Care".obs,discountText: "15% off your next purchase".obs)]);

 }
