import '../cart_page/widgets/productlist3_item_widget.dart';
import '../cart_page/widgets/userprofile6_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_model.dart';
import 'models/productlist3_item_model.dart';
import 'models/userprofile6_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key})
      : super(
          key: key,
        );

  CartController controller = Get.put(CartController(CartModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 6.v),
              _buildShippingAddress(),
              SizedBox(height: 16.v),
              _buildProductList(),
              SizedBox(height: 21.v),
              _buildCheckout(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 44.v,
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          children: [
            AppbarTitle(
              text: "lbl_cart".tr,
            ),
            Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(
                left: 7.h,
                bottom: 2.v,
              ),
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
                      padding: EdgeInsets.fromLTRB(10.h, 5.v, 9.h, 2.v),
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
  Widget _buildProductList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount:
              controller.cartModelObj.value.productlist3ItemList.value.length,
          itemBuilder: (context, index) {
            Productlist3ItemModel model =
                controller.cartModelObj.value.productlist3ItemList.value[index];
            return Productlist3ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckout() {
    return SizedBox(
      height: 293.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_from_your_wishlist".tr,
                    style: CustomTextStyles.titleLargeBlack9000222,
                  ),
                  SizedBox(height: 15.v),
                  SizedBox(
                    height: 232.v,
                    width: 335.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 54.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.fillIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Text(
                              "lbl_pink".tr,
                              style: CustomTextStyles.titleSmallBlack90002,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 198.h,
                              right: 87.h,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.fillIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                Text(
                                  "lbl_m".tr,
                                  style: CustomTextStyles.titleSmallBlack90002,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClosePrimary,
                          height: 25.v,
                          width: 29.h,
                          alignment: Alignment.bottomRight,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Obx(
                            () => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: 14.v,
                                );
                              },
                              itemCount: controller.cartModelObj.value
                                  .userprofile6ItemList.value.length,
                              itemBuilder: (context, index) {
                                Userprofile6ItemModel model = controller
                                    .cartModelObj
                                    .value
                                    .userprofile6ItemList
                                    .value[index];
                                return Userprofile6ItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 233.v),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillGray10003,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                      top: 10.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "lbl_34_00".tr,
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ),
                  Spacer(),
                  CustomElevatedButton(
                    width: 128.h,
                    text: "lbl_checkout".tr,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
