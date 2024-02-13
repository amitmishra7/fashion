import '../bloc/cart_empty_shown_from_wishlist_bloc.dart';
import '../controller/cart_empty_shown_from_wishlist_controller.dart';
import '../models/color7_item_model.dart';
import '../models/userprofile7_item_model.dart';
import 'color7_item_widget.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile7ItemWidget extends StatelessWidget {
  Userprofile7ItemWidget(
    this.userprofile7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile7ItemModel userprofile7ItemModelObj;

  var controller = Get.find<CartEmptyShownFromWishlistController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
                      imagePath: userprofile7ItemModelObj.userImage!.value,
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
                              imagePath:
                                  userprofile7ItemModelObj.userImage1!.value,
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
                            child: Obx(
                              () => CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration: IconButtonStyleHelper.fillRed,
                                alignment: Alignment.bottomLeft,
                                child: CustomImageView(
                                  imagePath:
                                      userprofile7ItemModelObj.thumbsUp!.value,
                                ),
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
            padding: EdgeInsets.only(
              left: 9.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: Obx(
                    () => Text(
                      userprofile7ItemModelObj.loremIpsumDolor!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Obx(
                    () => Text(
                      userprofile7ItemModelObj.title!.value,
                      style: CustomTextStyles.titleMedium18,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                Obx(
                  () => Wrap(
                    runSpacing: 6.v,
                    spacing: 6.h,
                    children: List<Widget>.generate(
                      controller.userprofile7ItemModelObj.value.color7ItemList
                          .value.length,
                      (index) {
                        Color7ItemModel model = controller
                            .userprofile7ItemModelObj
                            .value
                            .color7ItemList
                            .value[index];

                        return Color7ItemWidget(
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
    );
  }
}
