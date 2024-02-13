import '../full_profile_page/widgets/doctorreviews_item_widget.dart';
import '../full_profile_page/widgets/dresses_item_widget.dart';
import '../full_profile_page/widgets/itemlist_item_widget.dart';
import '../full_profile_page/widgets/justforyou_item_widget.dart';
import '../full_profile_page/widgets/recentorders_item_widget.dart';
import '../full_profile_page/widgets/topproducts_item_widget.dart';
import '../full_profile_page/widgets/userprofile_item_widget.dart';
import 'controller/full_profile_controller.dart';
import 'models/doctorreviews_item_model.dart';
import 'models/dresses_item_model.dart';
import 'models/full_profile_model.dart';
import 'models/itemlist_item_model.dart';
import 'models/justforyou_item_model.dart';
import 'models/recentorders_item_model.dart';
import 'models/topproducts_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title_button.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FullProfilePage extends StatelessWidget {
  FullProfilePage({Key? key})
      : super(
          key: key,
        );

  FullProfileController controller =
      Get.put(FullProfileController(FullProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_hello_romina2".tr,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                _buildAnnouncement(),
                SizedBox(height: 22.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_recently_viewed".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                _buildRecentOrders(),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_my_orders".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildToPay(),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_stories".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                _buildDoctorReviews(),
                SizedBox(height: 25.v),
                _buildNewItems(),
                SizedBox(height: 12.v),
                _buildItemList(),
                SizedBox(height: 21.v),
                _buildMostPopular(),
                SizedBox(height: 10.v),
                _buildCBECFour(),
                SizedBox(height: 24.v),
                _buildCategories(),
                SizedBox(height: 10.v),
                _buildUserProfile(),
                SizedBox(height: 26.v),
                _buildFlashSale(),
                SizedBox(height: 13.v),
                _buildTopProducts(),
                SizedBox(height: 39.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_top_products".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                _buildDresses(),
                SizedBox(height: 9.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "lbl_dresses".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 98.h),
                    child: Text(
                      "lbl_t_shirts".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                Text(
                  "lbl_skirts".tr,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 100.h),
                    child: Text(
                      "lbl_shoes".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 34.h),
                    child: Text(
                      "lbl_bags".tr,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                SizedBox(height: 36.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_just_for_you".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 13.v,
                          width: 14.h,
                          margin: EdgeInsets.only(
                            left: 7.h,
                            top: 2.v,
                            bottom: 8.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                _buildJustForYou(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
        decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: AppbarImage(
          imagePath: ImageConstant.imgImage,
        ),
      ),
      title: AppbarTitleButton(
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIcon,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 11.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgMessagesIcon,
          margin: EdgeInsets.only(
            left: 11.h,
            top: 11.v,
            right: 10.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgMessagesIcon,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 11.v,
            right: 30.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAnnouncement() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_announcement".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 244.h,
                    margin: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "msg_lorem_ipsum_dolor4".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmall10.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 34.h,
                    bottom: 2.v,
                  ),
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
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrders() {
    return SizedBox(
      height: 60.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
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
              .fullProfileModelObj.value.recentordersItemList.value.length,
          itemBuilder: (context, index) {
            RecentordersItemModel model = controller
                .fullProfileModelObj.value.recentordersItemList.value[index];
            return RecentordersItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildToPay() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 86.h,
            margin: EdgeInsets.only(top: 2.v),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: Text(
              "lbl_to_pay".tr,
              style: CustomTextStyles.titleMediumBlue80001,
            ),
          ),
          Container(
            height: 37.v,
            width: 122.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.greenA700,
                      borderRadius: BorderRadius.circular(
                        7.h,
                      ),
                      border: Border.all(
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
                        width: 2.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    width: 118.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder18,
                    ),
                    child: Text(
                      "lbl_to_recieve".tr,
                      style: CustomTextStyles.titleMediumBlue80001,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 116.h,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 2.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            child: Text(
              "lbl_to_review".tr,
              style: CustomTextStyles.titleMediumBlue80001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDoctorReviews() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 175.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 20.h),
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
                .fullProfileModelObj.value.doctorreviewsItemList.value.length,
            itemBuilder: (context, index) {
              DoctorreviewsItemModel model = controller
                  .fullProfileModelObj.value.doctorreviewsItemList.value[index];
              return DoctorreviewsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewItems() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              "lbl_new_items".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleSmall15_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildItemList() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 204.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 6.h,
              );
            },
            itemCount: controller
                .fullProfileModelObj.value.itemlistItemList.value.length,
            itemBuilder: (context, index) {
              ItemlistItemModel model = controller
                  .fullProfileModelObj.value.itemlistItemList.value[index];
              return ItemlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMostPopular() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              "lbl_most_popular".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleSmall15_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              bottom: 2.v,
            ),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildCBECFour() {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
          child: SizedBox(
            height: 140.v,
            width: 355.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(left: 330.h),
                    padding: EdgeInsets.all(5.h),
                    decoration: AppDecoration.outlineBlack900023.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder11,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img526227cbE83c4,
                          height: 103.v,
                          width: 93.h,
                          radius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "lbl_1780".tr,
                          style: CustomTextStyles.titleSmallBlack9000215,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 140.v,
                        width: 104.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 140.v,
                                width: 104.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onErrorContainer
                                      .withOpacity(1),
                                  borderRadius: BorderRadius.circular(
                                    9.h,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          appTheme.black90002.withOpacity(0.1),
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 5.h,
                                  right: 6.h,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgD1d72d4d1d494,
                                      height: 102.v,
                                      width: 93.h,
                                      radius: BorderRadius.circular(
                                        5.h,
                                      ),
                                    ),
                                    SizedBox(height: 8.v),
                                    _buildZipcode(
                                      zipcodeText: "lbl_1780".tr,
                                      titleText: "lbl_new".tr,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgFavoriteBlue80001,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(
                          top: 118.v,
                          bottom: 11.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.h,
                          top: 116.v,
                          bottom: 7.v,
                        ),
                        child: Text(
                          "lbl_hot".tr,
                          textAlign: TextAlign.right,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 220.h,
                    right: 31.h,
                  ),
                  child: _buildClientTestimonials(
                    userImage: ImageConstant.imgE289a622Db6f4,
                    zipcodeText: "lbl_1780".tr,
                    titleText: "lbl_hot".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 110.h,
                    right: 141.h,
                  ),
                  child: _buildClientTestimonials(
                    userImage: ImageConstant.imgAc1999d5B8ae4,
                    zipcodeText: "lbl_1780".tr,
                    titleText: "lbl_sale".tr,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategories() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 7.v),
            child: Text(
              "lbl_categories".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleSmall15_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              bottom: 2.v,
            ),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 193.v,
            crossAxisCount: 2,
            mainAxisSpacing: 5.h,
            crossAxisSpacing: 5.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .fullProfileModelObj.value.userprofileItemList.value.length,
          itemBuilder: (context, index) {
            UserprofileItemModel model = controller
                .fullProfileModelObj.value.userprofileItemList.value[index];
            return UserprofileItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFlashSale() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_flash_sale".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 19.v,
            width: 17.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 5.v,
            ),
          ),
          Container(
            width: 30.h,
            margin: EdgeInsets.only(
              left: 10.h,
              bottom: 1.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              "lbl_00".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Container(
            width: 30.h,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 1.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              "lbl_36".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Container(
            width: 30.h,
            margin: EdgeInsets.only(
              left: 2.h,
              bottom: 1.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 5.h,
              vertical: 1.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              "lbl_58".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopProducts() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 115.v,
            crossAxisCount: 3,
            mainAxisSpacing: 4.h,
            crossAxisSpacing: 4.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .fullProfileModelObj.value.topproductsItemList.value.length,
          itemBuilder: (context, index) {
            TopproductsItemModel model = controller
                .fullProfileModelObj.value.topproductsItemList.value[index];
            return TopproductsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDresses() {
    return SizedBox(
      height: 60.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 9.h,
            );
          },
          itemCount:
              controller.fullProfileModelObj.value.dressesItemList.value.length,
          itemBuilder: (context, index) {
            DressesItemModel model = controller
                .fullProfileModelObj.value.dressesItemList.value[index];
            return DressesItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJustForYou() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 246.v,
            crossAxisCount: 2,
            mainAxisSpacing: 5.h,
            crossAxisSpacing: 5.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .fullProfileModelObj.value.justforyouItemList.value.length,
          itemBuilder: (context, index) {
            JustforyouItemModel model = controller
                .fullProfileModelObj.value.justforyouItemList.value[index];
            return JustforyouItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildZipcode({
    required String zipcodeText,
    required String titleText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          zipcodeText,
          style: CustomTextStyles.titleSmallBlack9000215.copyWith(
            color: appTheme.black90002,
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
            left: 25.h,
            bottom: 2.v,
          ),
          child: Text(
            titleText,
            style: theme.textTheme.labelLarge!.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildClientTestimonials({
    required String userImage,
    required String zipcodeText,
    required String titleText,
  }) {
    return Container(
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.outlineBlack900023.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder11,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 103.v,
            width: 93.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                zipcodeText,
                style: CustomTextStyles.titleSmallBlack9000215.copyWith(
                  color: appTheme.black90002,
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
                  left: 20.h,
                  bottom: 2.v,
                ),
                child: Text(
                  titleText,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: appTheme.gray90001,
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
