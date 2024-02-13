import '../chat_starting_question_three_screen/widgets/orderdetails2_item_widget.dart';
import 'controller/chat_starting_question_three_controller.dart';
import 'models/orderdetails2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_iconbutton.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:amit_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:amit_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChatStartingQuestionThreeScreen
    extends GetWidget<ChatStartingQuestionThreeController> {
  const ChatStartingQuestionThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray5001,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.v),
              Container(
                width: 221.h,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 134.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillIndigo.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder11,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.v),
                    Container(
                      width: 185.h,
                      margin: EdgeInsets.only(right: 7.h),
                      child: Text(
                        "msg_hello_amanda_welcome".tr,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.58,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              _buildSelectButton(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 81.v,
      leadingWidth: 60.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 20.h,
          top: 26.v,
          bottom: 15.v,
        ),
        decoration: AppDecoration.outlineOnErrorContainer1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: AppbarIconbutton(
          imagePath: ImageConstant.imgBagPrimary,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_chat_bot".tr,
              margin: EdgeInsets.only(right: 66.h),
            ),
            AppbarSubtitleFour(
              text: "msg_customer_care_service".tr,
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSelectButton() {
    return SizedBox(
      height: 393.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 313.v),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillIndigo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 7.v,
                      bottom: 29.v,
                    ),
                    child: Text(
                      "lbl_message".tr,
                      style: CustomTextStyles.titleMediumBlueA700,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImageBlueA700,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(
                      right: 44.h,
                      bottom: 29.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 9.h),
              decoration: AppDecoration.outlineBlack900026.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder11,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 356.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillGray5003.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL9,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.v),
                        Text(
                          "msg_select_one_of_your".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: 9.v,
                          );
                        },
                        itemCount: controller.chatStartingQuestionThreeModelObj
                            .value.orderdetails2ItemList.value.length,
                        itemBuilder: (context, index) {
                          Orderdetails2ItemModel model = controller
                              .chatStartingQuestionThreeModelObj
                              .value
                              .orderdetails2ItemList
                              .value[index];
                          return Orderdetails2ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 43.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 13.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomElevatedButton(
                            text: "lbl_next".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 5.v,
                            bottom: 9.v,
                          ),
                          child: CustomIconButton(
                            height: 26.adaptSize,
                            width: 26.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgCloseOnerrorcontainer26x26,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
