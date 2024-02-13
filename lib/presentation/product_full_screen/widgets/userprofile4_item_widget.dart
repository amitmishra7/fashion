import '../controller/product_full_controller.dart';
import '../models/userprofile4_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  var controller = Get.find<ProductFullController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.outlineBlack900023.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      width: 104.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 103.v,
            width: 93.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: userprofile4ItemModelObj.userImage1!.value,
                    height: 103.v,
                    width: 93.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    imagePath: userprofile4ItemModelObj.userImage2!.value,
                    height: 103.v,
                    width: 93.h,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  userprofile4ItemModelObj.titleText1!.value,
                  style: CustomTextStyles.titleSmallBlack9000215,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFavoriteBlue80001,
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 2.v,
                  bottom: 5.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  bottom: 2.v,
                ),
                child: Obx(
                  () => Text(
                    userprofile4ItemModelObj.titleText2!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
