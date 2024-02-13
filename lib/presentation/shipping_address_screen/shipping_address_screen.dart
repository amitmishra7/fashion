import 'controller/shipping_address_controller.dart';
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
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ShippingAddressScreen extends GetWidget<ShippingAddressController> {
  const ShippingAddressScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_shipping_address".tr,
                style: CustomTextStyles.titleMediumBlack90002Medium16,
              ),
              SizedBox(height: 25.v),
              _buildCountry(),
              SizedBox(height: 23.v),
              Text(
                "lbl_address".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
              SizedBox(height: 1.v),
              _buildAddress(),
              SizedBox(height: 23.v),
              Text(
                "lbl_town_city".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
              _buildCity(),
              SizedBox(height: 22.v),
              Text(
                "lbl_postcode".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
              SizedBox(height: 1.v),
              _buildRequiredThree(),
              SizedBox(height: 22.v),
              Text(
                "lbl_phone_number".tr,
                style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
              ),
              SizedBox(height: 1.v),
              _buildPhoneNumber(),
              Spacer(),
              SizedBox(height: 20.v),
              _buildSaveChanges(),
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
  Widget _buildCountry() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_country".tr,
              style: CustomTextStyles.labelLargeNunitoSansBlack90002SemiBold,
            ),
            SizedBox(height: 4.v),
            Text(
              "msg_choose_your_country".tr,
              style: CustomTextStyles.titleLarge20,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.v),
          child: CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return CustomTextFormField(
      controller: controller.addressController,
      hintText: "lbl_required".tr,
      hintStyle: CustomTextStyles.titleMediumIndigo200,
    );
  }

  /// Section Widget
  Widget _buildCity() {
    return CustomTextFormField(
      controller: controller.cityController,
      hintText: "lbl_required".tr,
      hintStyle: CustomTextStyles.titleMediumIndigo200,
    );
  }

  /// Section Widget
  Widget _buildRequiredThree() {
    return CustomTextFormField(
      controller: controller.requiredThreeController,
      hintText: "lbl_required".tr,
      hintStyle: CustomTextStyles.titleMediumIndigo200,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
      controller: controller.phoneNumberController,
      hintText: "lbl_required".tr,
      hintStyle: CustomTextStyles.titleMediumIndigo200,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildSaveChanges() {
    return CustomElevatedButton(
      text: "lbl_save_changes".tr,
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
