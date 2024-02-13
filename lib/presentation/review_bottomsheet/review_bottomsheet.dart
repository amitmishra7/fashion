import 'controller/review_controller.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_elevated_button.dart';
import 'package:amit_s_application2/widgets/custom_rating_bar.dart';
import 'package:amit_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ReviewBottomsheet extends StatelessWidget {
  ReviewBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 58.v),
          Padding(
            padding: EdgeInsets.only(right: 71.h),
            child: Row(
              children: [
                Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  decoration: AppDecoration.outlineOnErrorContainer3.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.img098576f0C6f3438x37,
                    height: 38.v,
                    width: 37.h,
                    radius: BorderRadius.circular(
                      18.h,
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_lorem_ipsum_dolor5".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "lbl_order_92287157".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          CustomRatingBar(
            initialRating: 0,
            itemSize: 33,
          ),
          SizedBox(height: 18.v),
          CustomTextFormField(
            controller: controller.commentController,
            hintText: "lbl_your_comment".tr,
            textInputAction: TextInputAction.done,
            maxLines: 5,
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            text: "lbl_say_it".tr,
          ),
        ],
      ),
    );
  }
}
