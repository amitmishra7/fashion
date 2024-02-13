import '../controller/shop_controller.dart';
import '../models/view_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewItemWidget extends StatelessWidget {
  ViewItemWidget(
    this.viewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewItemModel viewItemModelObj;

  var controller = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onErrorContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Container(
        height: 114.v,
        width: 109.h,
        padding: EdgeInsets.all(5.h),
        decoration: AppDecoration.outlineBlack900023.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder11,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: viewItemModelObj.userImage!.value,
                height: 103.v,
                width: 99.h,
                radius: BorderRadius.circular(
                  5.h,
                ),
                alignment: Alignment.center,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 18.v,
                width: 39.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 18.v,
                        width: 39.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.h),
                            topRight: Radius.circular(5.h),
                            bottomLeft: Radius.circular(5.h),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(1, 0),
                            end: Alignment(0, 0),
                            colors: [
                              appTheme.pink300,
                              appTheme.redA400,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Obx(
                        () => Text(
                          viewItemModelObj.titleText!.value,
                          style:
                              CustomTextStyles.labelLargeOnErrorContainerBold,
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
    );
  }
}
