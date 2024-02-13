import '../controller/add_voucher_controller.dart';
import '../models/vouchercomponent_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class VouchercomponentItemWidget extends StatelessWidget {
  VouchercomponentItemWidget(
    this.vouchercomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VouchercomponentItemModel vouchercomponentItemModelObj;

  var controller = Get.find<AddVoucherController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgVoucher01,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    bottom: 3.v,
                  ),
                  child: Obx(
                    () => Text(
                      vouchercomponentItemModelObj.voucherTitle!.value,
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                  ),
                ),
                Container(
                  width: 100.h,
                  margin: EdgeInsets.only(bottom: 6.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Obx(
                    () => Text(
                      vouchercomponentItemModelObj.validUntil!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              right: 7.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath: vouchercomponentItemModelObj
                                  .firstPurchaseImage!.value,
                              height: 14.v,
                              width: 13.h,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 3.v,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Obx(
                              () => Text(
                                vouchercomponentItemModelObj
                                    .firstPurchaseTitle!.value,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          vouchercomponentItemModelObj.discountText!.value,
                          style:
                              CustomTextStyles.labelLargeNunitoSansBlack90002,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomOutlinedButton(
                  width: 79.h,
                  text: "lbl_apply".tr,
                  margin: EdgeInsets.only(top: 16.v),
                  buttonStyle: CustomButtonStyles.outlineBlue,
                  buttonTextStyle:
                      CustomTextStyles.titleSmallOnErrorContainerMedium_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
