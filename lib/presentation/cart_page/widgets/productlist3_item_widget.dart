import '../controller/cart_controller.dart';
import '../models/productlist3_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productlist3ItemWidget extends StatelessWidget {
  Productlist3ItemWidget(
    this.productlist3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist3ItemModel productlist3ItemModelObj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
          child: Container(
            height: 109.v,
            width: 129.h,
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlineBlack900023.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder11,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: productlist3ItemModelObj.image!.value,
                    height: 101.v,
                    width: 121.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 101.v,
                    width: 121.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath: productlist3ItemModelObj.image1!.value,
                            height: 101.v,
                            width: 121.h,
                            radius: BorderRadius.circular(
                              5.h,
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 6.v,
                          ),
                          child: CustomIconButton(
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            padding: EdgeInsets.all(9.h),
                            decoration:
                                IconButtonStyleHelper.fillOnErrorContainerTL17,
                            alignment: Alignment.bottomLeft,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgThumbsUp,
                            ),
                          ),
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
          padding: EdgeInsets.only(top: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 140.h,
                child: Obx(
                  () => Text(
                    productlist3ItemModelObj.text!.value,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Obx(
                () => Text(
                  productlist3ItemModelObj.title!.value,
                  style: CustomTextStyles.titleSmallBlack90002,
                ),
              ),
              SizedBox(height: 18.v),
              SizedBox(
                width: 196.h,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.v,
                        bottom: 3.v,
                      ),
                      child: Obx(
                        () => Text(
                          productlist3ItemModelObj.price!.value,
                          style: CustomTextStyles.titleMedium18,
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.outlineBlueATL151,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLess,
                      ),
                    ),
                    CustomElevatedButton(
                      height: 30.v,
                      width: 37.h,
                      text: "lbl_1".tr,
                      margin: EdgeInsets.only(left: 6.h),
                      buttonStyle: CustomButtonStyles.fillIndigoTL7,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumBlack90002Medium16,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.outlineBlueATL151,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup1353,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
