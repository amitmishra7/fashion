import '../../../core/app_export.dart';import 'vouchercomponent2_item_model.dart';/// This class defines the variables used in the [voucher_is_gonna_expire_page],
/// and is typically used to hold data that is passed between different parts of the application.
class VoucherIsGonnaExpireModel {Rx<List<Vouchercomponent2ItemModel>> vouchercomponent2ItemList = Rx([Vouchercomponent2ItemModel(voucherTitle: "Voucher".obs,daysLeft: "3 days left".obs,validUntil: "Valid Until 4.21.20".obs,firstPurchaseImage:ImageConstant.imgIconPrimary.obs,firstPurchaseTitle: "First Purchase".obs,discountText: "5% off for your next order".obs),Vouchercomponent2ItemModel(firstPurchaseImage:ImageConstant.imgThumbsUpPrimary.obs,firstPurchaseTitle: "Gift From Customer Care".obs,discountText: "15% off your next purchase".obs),Vouchercomponent2ItemModel(firstPurchaseImage:ImageConstant.imgFavoritePrimary.obs,firstPurchaseTitle: "Loyal Customer".obs,discountText: "10% off your next purchase".obs)]);

 }
