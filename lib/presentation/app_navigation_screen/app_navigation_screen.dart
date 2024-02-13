import 'controller/app_navigation_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "01 Start".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Create Account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Password Typing".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordTypingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06 Wrong Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wrongPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "07 Password Recovery".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordRecoveryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "08 Password Recovery — Code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordRecoveryCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "09 New Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "11 Hello Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helloCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "12 Ready Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.readyCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "13 Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "15 Shop".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shopScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "16 Flash Sale + Live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flashSaleLiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "17 Flash Sale".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flashSaleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "18 Flash Sale Full - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.flashSaleFullContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "19 Live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "20 Story + Dots".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.storyDotsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "21 Story Dots Tap".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.storyDotsTapScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "22 Story + Product Style One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.storyProductStyleOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "23 Story + Banner".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.storyBannerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "24 Story + Product Style Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.storyProductStyleTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "25 Shop — Clothing".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shopClothingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "26 Shop — Clothing on Scroll".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.shopClothingOnScrollScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "27 Categories Filter - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.categoriesFilterTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "28 Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "30 Image Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.imageSearchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "31 Recognizing Image".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.recognizingImageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "32 Image Recognized".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.imageRecognizedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "33 Image Search Results".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.imageSearchResultsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "34 Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "35 Product".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "36 Product Sale".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productSaleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "37 Product Full".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productFullScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "38 Product Variations".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productVariationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "39 Reviews".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "41 Wishlist — Empty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wishlistEmptyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "42 Recently Viewed".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recentlyViewedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "43 Recently Viewed Date".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.recentlyViewedDateScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "44 Recently Viewed Date Chosen - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .recentlyViewedDateChosenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "46 Cart Empty Shown From Wishlist".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cartEmptyShownFromWishlistScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "47 Cart Empty Shown From Popular".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cartEmptyShownFromPopularScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "48 Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "50 Voucher Added".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.voucherAddedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "57 To Recieve".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.toRecieveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "59 To Receive Progress".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.toReceiveProgressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "60 To Receive Attempt Is Not Successful".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.toReceiveAttemptIsNotSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "62 Profile To Receive Notification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileToReceiveNotificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "63 Delivered".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deliveredScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "64 My Activity".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myActivityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "65 History".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "68 Chat Starting Question One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatStartingQuestionOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "69 Chat Starting Question Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatStartingQuestionTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "70 Chat Starting Question Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatStartingQuestionThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "71 Chat Connecting With an Agent".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatConnectingWithAnAgentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "72 Chat Agent is Typing".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatAgentIsTypingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "73 Chat Hello".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatHelloScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "74 Chat Response".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatResponseScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "75 Chat Voucher".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatVoucherScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "76 Chat Messaging One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatMessagingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "77 Chat Messaging Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatMessagingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "78 Chat Go To The Bottom".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatGoToTheBottomScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "79 Chat Messaging Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatMessagingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "81 Profile Reward".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileRewardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "84 Rewards Progress - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.rewardsProgressTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "85 Profile Voucher Reminder".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileVoucherReminderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "86 Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "87 Settings Full".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsFullScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "88 Settings Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "89 Settings Add Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsAddCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "92 Payment Methods + History".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodsHistoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "93 Payment Methods + History 2 Cards".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodsHistory2CardsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "94 Shipping Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shippingAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "95 Edit Shipping Address".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editShippingAddress1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "96 Choose Your Country".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseYourCountryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "97 Choose Your Language".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseYourLanguageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "98 Choose Your Currency".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseYourCurrencyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "99 Sizes Types".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sizesTypesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "101 About".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
