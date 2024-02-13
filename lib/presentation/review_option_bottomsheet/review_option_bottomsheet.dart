import '../review_option_bottomsheet/widgets/orderdetails1_item_widget.dart';
import 'controller/review_option_controller.dart';
import 'models/orderdetails1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class ReviewOptionBottomsheet extends StatelessWidget {
  ReviewOptionBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ReviewOptionController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          _buildHeader(),
          _buildOrderDetails(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillGray5003.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.v),
          Text(
            "msg_which_item_you_want".tr,
            style: CustomTextStyles.titleLargeBlack9000222,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails() {
    return Container(
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL9,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 15.v,
            );
          },
          itemCount: controller
              .reviewOptionModelObj.value.orderdetails1ItemList.value.length,
          itemBuilder: (context, index) {
            Orderdetails1ItemModel model = controller
                .reviewOptionModelObj.value.orderdetails1ItemList.value[index];
            return Orderdetails1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
