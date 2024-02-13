import 'controller/settings_profile_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/core/utils/validation_functions.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsProfileScreen extends GetWidget<SettingsProfileController> {
  SettingsProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(20.h),
                child: Column(
                  children: [
                    SizedBox(height: 14.v),
                    _buildName1(),
                    SizedBox(height: 10.v),
                    _buildEmail(),
                    SizedBox(height: 10.v),
                    _buildPassword(),
                    Spacer(),
                    _buildSaveChanges(),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
      width: 335.h,
      controller: controller.nameController,
      hintText: "lbl_romina".tr,
      hintStyle: CustomTextStyles.bodyLargeRalewayBlack90002,
      alignment: Alignment.bottomCenter,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildName1() {
    return SizedBox(
      height: 251.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          _buildName(),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse151,
            height: 105.adaptSize,
            width: 105.adaptSize,
            radius: BorderRadius.circular(
              52.5.adaptSize,
            ),
            alignment: Alignment.centerLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.img662b4d69591f4,
            height: 91.adaptSize,
            width: 91.adaptSize,
            radius: BorderRadius.circular(
              45.5.adaptSize,
            ),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 7.h),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 201.v,
              width: 91.h,
              margin: EdgeInsets.only(left: 7.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.img2756e254De254,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 92.adaptSize,
              width: 92.adaptSize,
              margin: EdgeInsets.only(left: 7.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgAvatar21,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 75.h,
              top: 76.v,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.topLeft,
              child: CustomImageView(
                imagePath: ImageConstant.imgButton,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 39.v),
              child: Text(
                "lbl_your_profile".tr,
                style: CustomTextStyles.titleMediumBlack90002Medium16,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "lbl_settings".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_gmail_example_com".tr,
      hintStyle: CustomTextStyles.titleMediumBlack90002Medium_2,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl2".tr,
      hintStyle: CustomTextStyles.titleMediumBlack90002Medium_2,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
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
