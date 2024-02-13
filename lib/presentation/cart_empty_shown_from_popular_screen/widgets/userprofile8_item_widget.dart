import '../controller/cart_empty_shown_from_popular_controller.dart';
import '../models/userprofile8_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile8ItemWidget extends StatelessWidget {
  Userprofile8ItemWidget(
    this.userprofile8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile8ItemModel userprofile8ItemModelObj;

  var controller = Get.find<CartEmptyShownFromPopularController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(5.h),
          decoration: AppDecoration.outlineBlack900023.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder11,
          ),
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
                        imagePath: userprofile8ItemModelObj.userImage1!.value,
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
                        imagePath: userprofile8ItemModelObj.userImage2!.value,
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
                      userprofile8ItemModelObj.titleText1!.value,
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
                        userprofile8ItemModelObj.titleText2!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
