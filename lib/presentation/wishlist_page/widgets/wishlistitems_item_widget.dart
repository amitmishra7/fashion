import '../bloc/wishlist_bloc.dart';
import '../controller/wishlist_controller.dart';
import '../models/color3_item_model.dart';
import '../models/wishlistitems_item_model.dart';
import 'color3_item_widget.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WishlistitemsItemWidget extends StatelessWidget {
  WishlistitemsItemWidget(
    this.wishlistitemsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WishlistitemsItemModel wishlistitemsItemModelObj;

  var controller = Get.find<WishlistController>();

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
              alignment: Alignment.bottomLeft,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: wishlistitemsItemModelObj.image!.value,
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
                    bottom: 5.v,
                  ),
                  child: Obx(
                    () => CustomIconButton(
                      height: 35.adaptSize,
                      width: 35.adaptSize,
                      padding: EdgeInsets.all(9.h),
                      decoration:
                          IconButtonStyleHelper.fillOnErrorContainerTL17,
                      alignment: Alignment.bottomLeft,
                      child: CustomImageView(
                        imagePath: wishlistitemsItemModelObj.thumbsUp!.value,
                      ),
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
              Container(
                width: 140.h,
                margin: EdgeInsets.only(left: 1.h),
                child: Obx(
                  () => Text(
                    wishlistitemsItemModelObj.text!.value,
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
                    wishlistitemsItemModelObj.title!.value,
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
                    controller.wishlistitemsItemModelObj.value.color3ItemList
                        .value.length,
                    (index) {
                      Color3ItemModel model = controller
                          .wishlistitemsItemModelObj
                          .value
                          .color3ItemList
                          .value[index];

                      return Color3ItemWidget(
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
    );
  }
}
