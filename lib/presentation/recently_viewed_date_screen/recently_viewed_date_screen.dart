import '../recently_viewed_date_screen/widgets/recentlyviewed2_item_widget.dart';
import 'controller/recently_viewed_date_controller.dart';
import 'models/recentlyviewed2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/presentation/cart_page/cart_page.dart';
import 'package:amit_s_application2/presentation/flash_sale_full_page/flash_sale_full_page.dart';
import 'package:amit_s_application2/presentation/full_profile_page/full_profile_page.dart';
import 'package:amit_s_application2/presentation/wishlist_page/wishlist_page.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_bottom_bar.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RecentlyViewedDateScreen extends GetWidget<RecentlyViewedDateController> {
  const RecentlyViewedDateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 6.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        _buildCalendar(),
                        SizedBox(height: 10.v),
                        _buildRecentlyViewed(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 49.v,
      title: AppbarTitle(
        text: "lbl_recently_viewed".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar() {
    return SizedBox(
      height: 242.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Obx(
              () => SizedBox(
                height: 227.v,
                width: 335.h,
                child: CalendarDatePicker2(
                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.multi,
                    firstDate: DateTime(DateTime.now().year - 5),
                    lastDate: DateTime(DateTime.now().year + 5),
                    selectedDayHighlightColor: Color(0XFFF8F8F8),
                    centerAlignModePicker: true,
                    firstDayOfWeek: 0,
                    controlsHeight: 30,
                    selectedDayTextStyle: TextStyle(
                      color: Color(0XFF202020),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                    controlsTextStyle: TextStyle(
                      color: theme.colorScheme.primary,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                    ),
                    disabledDayTextStyle: TextStyle(
                      color: appTheme.gray90001,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                    dayBorderRadius: BorderRadius.circular(
                      15.h,
                    ),
                  ),
                  value: controller.selectedDatesFromCalendar1.value,
                  onValueChanged: (dates) {
                    controller.selectedDatesFromCalendar1.value = dates;
                  },
                ),
              ),
            ),
          ),
          CustomIconButton(
            height: 30.adaptSize,
            width: 30.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineBlack,
            alignment: Alignment.bottomCenter,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrameBlueA700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentlyViewed() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 246.v,
          crossAxisCount: 2,
          mainAxisSpacing: 5.h,
          crossAxisSpacing: 5.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.recentlyViewedDateModelObj.value
            .recentlyviewed2ItemList.value.length,
        itemBuilder: (context, index) {
          Recentlyviewed2ItemModel model = controller.recentlyViewedDateModelObj
              .value.recentlyviewed2ItemList.value[index];
          return Recentlyviewed2ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Settings:
        return AppRoutes.flashSaleFullPage;
      case BottomBarEnum.Favorite:
        return AppRoutes.wishlistPage;
      case BottomBarEnum.User:
        return "/";
      case BottomBarEnum.Cart:
        return AppRoutes.cartPage;
      case BottomBarEnum.Lock:
        return AppRoutes.fullProfilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.flashSaleFullPage:
        return FlashSaleFullPage();
      case AppRoutes.wishlistPage:
        return WishlistPage();
      case AppRoutes.cartPage:
        return CartPage();
      case AppRoutes.fullProfilePage:
        return FullProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
