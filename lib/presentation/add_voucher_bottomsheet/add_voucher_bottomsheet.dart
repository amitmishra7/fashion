import '../add_voucher_bottomsheet/widgets/vouchercomponent_item_widget.dart';
import 'controller/add_voucher_controller.dart';
import 'models/vouchercomponent_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class AddVoucherBottomsheet extends StatelessWidget {
  AddVoucherBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  AddVoucherController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 25.v,
            ),
            decoration: AppDecoration.fillGray5003.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL9,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  "lbl_active_vouchers".tr,
                  style: CustomTextStyles.titleLargeBlack9000222,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.5.v),
                    child: SizedBox(
                      width: 336.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  );
                },
                itemCount: controller.addVoucherModelObj.value
                    .vouchercomponentItemList.value.length,
                itemBuilder: (context, index) {
                  VouchercomponentItemModel model = controller
                      .addVoucherModelObj
                      .value
                      .vouchercomponentItemList
                      .value[index];
                  return VouchercomponentItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
