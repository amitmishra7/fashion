import '../controller/shop_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.outlineBlack900023.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder11,
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder7,
                ),
                child: Container(
                  height: 129.v,
                  width: 130.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofile1ItemModelObj.userImage1!.value,
                          height: 129.v,
                          width: 130.h,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofile1ItemModelObj.userImage2!.value,
                          height: 129.v,
                          width: 130.h,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 6.v),
            SizedBox(
              width: 116.h,
              child: Obx(
                () => Text(
                  userprofile1ItemModelObj.loremIpsumText!.value,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                userprofile1ItemModelObj.titleText!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
