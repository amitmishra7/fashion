import '../controller/voucher_is_gonna_expire_controller.dart';
import '../models/vouchercomponent2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Vouchercomponent2ItemWidget extends StatelessWidget {
  Vouchercomponent2ItemWidget(
    this.vouchercomponent2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Vouchercomponent2ItemModel vouchercomponent2ItemModelObj;

  var controller = Get.find<VoucherIsGonnaExpireController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 6.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgVoucher01Gray5001,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    vouchercomponent2ItemModelObj.voucherTitle!.value,
                    style: CustomTextStyles.titleMediumRed300,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Obx(
                    () => Text(
                      vouchercomponent2ItemModelObj.daysLeft!.value,
                      style: CustomTextStyles.labelMediumRed300,
                    ),
                  ),
                ),
                Container(
                  width: 100.h,
                  margin: EdgeInsets.only(left: 8.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillDeepOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Obx(
                    () => Text(
                      vouchercomponent2ItemModelObj.validUntil!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath: vouchercomponent2ItemModelObj
                                  .firstPurchaseImage!.value,
                              height: 14.v,
                              width: 13.h,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 4.v,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.h),
                            child: Obx(
                              () => Text(
                                vouchercomponent2ItemModelObj
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
                          vouchercomponent2ItemModelObj.discountText!.value,
                          style:
                              CustomTextStyles.labelLargeNunitoSansBlack90002,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomOutlinedButton(
                  width: 79.h,
                  text: "lbl_collected".tr,
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
