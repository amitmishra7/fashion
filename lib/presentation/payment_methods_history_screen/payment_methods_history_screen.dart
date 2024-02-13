import '../payment_methods_history_screen/widgets/orderitem_item_widget.dart';
import 'controller/payment_methods_history_controller.dart';
import 'models/orderitem_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentMethodsHistoryScreen
    extends GetWidget<PaymentMethodsHistoryController> {
  const PaymentMethodsHistoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_payment_methods2".tr,
                style: CustomTextStyles.titleMediumBlack90002Medium16,
              ),
              SizedBox(height: 26.v),
              _buildMastercard(),
              SizedBox(height: 16.v),
              _buildOrderItem(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_settings".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildMastercard() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillGray10002.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder11,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMastercard,
                      height: 34.v,
                      width: 56.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseIndigo50,
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                    ),
                  ],
                ),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: _buildTitle(
                    title: "msg".tr,
                    title1: "lbl_1579".tr,
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: _buildTitle(
                    title: "lbl_amanda_morgan".tr,
                    title1: "lbl_12_22".tr,
                  ),
                ),
                SizedBox(height: 19.v),
              ],
            ),
          ),
        ),
        Container(
          height: 155.v,
          width: 45.h,
          margin: EdgeInsets.only(left: 10.h),
          padding: EdgeInsets.only(
            left: 16.h,
            top: 68.v,
            right: 16.h,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup1353Onerrorcontainer,
            height: 11.adaptSize,
            width: 11.adaptSize,
            alignment: Alignment.topRight,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOrderItem() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 4.v,
          );
        },
        itemCount: controller
            .paymentMethodsHistoryModelObj.value.orderitemItemList.value.length,
        itemBuilder: (context, index) {
          OrderitemItemModel model = controller.paymentMethodsHistoryModelObj
              .value.orderitemItemList.value[index];
          return OrderitemItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildTitle({
    required String title,
    required String title1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: CustomTextStyles.labelMediumNunitoSansGray90001.copyWith(
            color: appTheme.gray90001,
          ),
        ),
        Text(
          title1,
          style: CustomTextStyles.labelMediumNunitoSansGray90001.copyWith(
            color: appTheme.gray90001,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.flashSaleFullPage;
      case BottomBarEnum.Favorite:
        return AppRoutes.wishlistPage;
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.cartPage;
      case BottomBarEnum.Lock:
        return AppRoutes.fullProfilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.flashSaleFullPage:
        return FlashSaleFullPage();
      case AppRoutes.wishlistPage:
        return WishlistPage();
      case AppRoutes.cartPage:
        return CartPage();
      case AppRoutes.fullProfilePage:
        return FullProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
