import '../wishlist_page/widgets/recentlyviewedlist_item_widget.dart';
import '../wishlist_page/widgets/wishlistitems_item_widget.dart';
import 'controller/wishlist_controller.dart';
import 'models/recentlyviewedlist_item_model.dart';
import 'models/wishlist_model.dart';
import 'models/wishlistitems_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  WishlistPage({Key? key})
      : super(
          key: key,
        );

  WishlistController controller =
      Get.put(WishlistController(WishlistModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 6.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  _buildRecentlyViewedTitle(),
                  SizedBox(height: 14.v),
                  _buildRecentlyViewedList(),
                  SizedBox(height: 14.v),
                  _buildWishlistItems(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 43.v,
      title: AppbarTitle(
        text: "lbl_wishlist".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentlyViewedTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 7.v),
          child: Text(
            "lbl_recently_viewed".tr,
            style: theme.textTheme.titleLarge,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecentlyViewedList() {
    return SizedBox(
      height: 60.v,
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 1.h,
            );
          },
          itemCount: controller
              .wishlistModelObj.value.recentlyviewedlistItemList.value.length,
          itemBuilder: (context, index) {
            RecentlyviewedlistItemModel model = controller
                .wishlistModelObj.value.recentlyviewedlistItemList.value[index];
            return RecentlyviewedlistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWishlistItems() {
    return Obx(
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
        itemCount: controller
            .wishlistModelObj.value.wishlistitemsItemList.value.length,
        itemBuilder: (context, index) {
          WishlistitemsItemModel model = controller
              .wishlistModelObj.value.wishlistitemsItemList.value[index];
          return WishlistitemsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
