import '../my_activity_screen/widgets/types_item_widget.dart';
import 'controller/my_activity_controller.dart';
import 'models/types_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_two.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class MyActivityScreen extends GetWidget<MyActivityController> {
  const MyActivityScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 17.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(
                text: "lbl_april".tr,
                buttonStyle: CustomButtonStyles.fillGrayTL18,
                buttonTextStyle: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 15.v),
              _buildDiagram(),
              SizedBox(height: 16.v),
              _buildTypes(),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildRecieved(
                      widget: "lbl_12".tr,
                      title: "lbl_ordered".tr,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: _buildRecieved(
                        widget: "lbl_7".tr,
                        title: "lbl_recieved".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: _buildRecieved(
                        widget: "lbl_5".tr,
                        title: "lbl_to_recieve".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              CustomElevatedButton(
                text: "lbl_order_history".tr,
              ),
              SizedBox(height: 3.v),
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
      leadingWidth: 64.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
        decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: AppbarImage(
          imagePath: ImageConstant.imgImage,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_my_activity".tr,
        margin: EdgeInsets.only(left: 17.h),
      ),
      actions: [
        AppbarTrailingIconbuttonTwo(
          imagePath: ImageConstant.imgIcon,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 11.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgEllispse01Indigo50,
          margin: EdgeInsets.only(
            left: 11.h,
            top: 11.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgEllispse01Indigo50,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 11.v,
            right: 30.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDiagram() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 106.v),
          child: CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowDownBlueA700,
            ),
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.only(left: 15.h),
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.circleBorder121,
          ),
          child: Container(
            height: 242.adaptSize,
            width: 242.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder121,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 140.adaptSize,
                    width: 140.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        70.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.black90002.withOpacity(0.16),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 66.h,
                      vertical: 79.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup392,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(
                          "lbl_total".tr,
                          style: CustomTextStyles.titleMediumBlack90002Medium16,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "lbl_365_00".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 106.v,
            bottom: 106.v,
          ),
          child: CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowDownBlueA70030x30,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTypes() {
    return Obx(
      () => Wrap(
        runSpacing: 6.v,
        spacing: 6.h,
        children: List<Widget>.generate(
          controller.myActivityModelObj.value.typesItemList.value.length,
          (index) {
            TypesItemModel model =
                controller.myActivityModelObj.value.typesItemList.value[index];

            return TypesItemWidget(
              model,
            );
          },
        ),
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
  Widget _buildRecieved({
    required String widget,
    required String title,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15.h),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder40,
          ),
          child: Container(
            width: 50.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: Text(
              widget,
              style: CustomTextStyles.titleLargeOnErrorContainer.copyWith(
                color: theme.colorScheme.onErrorContainer.withOpacity(1),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.v),
        Text(
          title,
          style: CustomTextStyles.labelLargeBold_1.copyWith(
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
