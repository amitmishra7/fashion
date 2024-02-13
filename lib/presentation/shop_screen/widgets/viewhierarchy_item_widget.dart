import '../controller/shop_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineBlack900023.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: viewhierarchyItemModelObj.image1!.value,
                  height: 75.adaptSize,
                  width: 75.adaptSize,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(top: 1.v),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: viewhierarchyItemModelObj.image2!.value,
                  height: 75.adaptSize,
                  width: 75.adaptSize,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: viewhierarchyItemModelObj.image3!.value,
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      radius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Obx(
                    () => Text(
                      viewhierarchyItemModelObj.title!.value,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  bottom: 2.v,
                ),
                child: Column(
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: viewhierarchyItemModelObj.image4!.value,
                        height: 75.adaptSize,
                        width: 75.adaptSize,
                        radius: BorderRadius.circular(
                          5.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 38.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillBlue.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7,
                        ),
                        child: Obx(
                          () => Text(
                            viewhierarchyItemModelObj.text1!.value,
                            style: CustomTextStyles.labelLargeBold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
