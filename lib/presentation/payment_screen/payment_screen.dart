import '../payment_screen/widgets/userprofile9_item_widget.dart';
import 'controller/payment_controller.dart';
import 'models/userprofile9_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:amit_s_application2/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildShippingAddress(),
                SizedBox(height: 6.v),
                _buildContactInformation(),
                SizedBox(height: 20.v),
                _buildAddVoucher(),
                SizedBox(height: 13.v),
                _buildUserProfile(),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_shipping_options".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildTitle(),
                SizedBox(height: 6.v),
                _buildTitle1(),
                SizedBox(height: 6.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_delivered_on_or".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                _buildTitle2(),
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 110.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                          height: 30.v,
                          width: 73.h,
                          text: "lbl_card".tr,
                          buttonStyle: CustomButtonStyles.fillIndigo,
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary15,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 1.v,
                          width: 16.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 9.v,
                            bottom: 21.v,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 7.v,
                            bottom: 21.v,
                          ),
                          child: Text(
                            "lbl_1579".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32.v),
                _buildTotal(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50.v,
      title: AppbarTitle(
        text: "lbl_payment".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildShippingAddress() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_shipping_address".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  width: 233.h,
                  child: Text(
                    "msg_26_duong_so_2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 23.v,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillBlueA,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionOnerrorcontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContactInformation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_contact_information".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 137.h,
                  child: Text(
                    "msg_84932000000_am".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmall10.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 22.v,
              bottom: 2.v,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillBlueA,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionOnerrorcontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddVoucher() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 94.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    "lbl_items".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1363,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 3.v),
                          child: Text(
                            "lbl_2".tr,
                            style: CustomTextStyles.titleMediumBlack9000218,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomOutlinedButton(
            height: 30.v,
            width: 120.h,
            text: "lbl_add_voucher".tr,
            buttonStyle: CustomButtonStyles.outlineBlueA,
            buttonTextStyle: CustomTextStyles.bodyMediumBlueA700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 6.v,
            );
          },
          itemCount: controller
              .paymentModelObj.value.userprofile9ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile9ItemModel model = controller
                .paymentModelObj.value.userprofile9ItemList.value[index];
            return Userprofile9ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomRadioButton(
              text: "lbl_standard".tr,
              value: "lbl_standard".tr,
              groupValue: controller.radioGroup.value,
              onChange: (value) {
                controller.radioGroup.value = value;
              },
            ),
          ),
          Container(
            width: 72.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGray5002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_5_7_days".tr,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              right: 8.h,
            ),
            child: Text(
              "lbl_free".tr,
              style: CustomTextStyles.titleMediumBlack90002,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: CustomRadioButton(
                text: "lbl_express".tr,
                value: "lbl_express".tr,
                groupValue: controller.radioGroup1.value,
                onChange: (value) {
                  controller.radioGroup1.value = value;
                },
              ),
            ),
          ),
          Container(
            width: 72.h,
            margin: EdgeInsets.only(left: 17.h),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGray5002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_1_2_days".tr,
              style: CustomTextStyles.labelLargePrimary,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              right: 8.h,
            ),
            child: Text(
              "lbl_12_00".tr,
              style: CustomTextStyles.titleMediumBlack90002,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              "lbl_payment_method".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillBlueA,
              child: CustomImageView(
                imagePath: ImageConstant.imgTelevisionOnerrorcontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotal() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_total".tr,
              style: CustomTextStyles.titleLargeBlack90002,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 9.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_34_00".tr,
              style: CustomTextStyles.titleMedium18,
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 128.h,
            text: "lbl_pay".tr,
            buttonStyle: CustomButtonStyles.fillGrayTL11,
          ),
        ],
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
