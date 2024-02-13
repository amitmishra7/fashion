import '../controller/my_vouchers_controller.dart';
import '../models/vouchercomponent1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Vouchercomponent1ItemWidget extends StatelessWidget {
  Vouchercomponent1ItemWidget(
    this.vouchercomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Vouchercomponent1ItemModel vouchercomponent1ItemModelObj;

  var controller = Get.find<MyVouchersController>();

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
                      vouchercomponent1ItemModelObj.voucherTitle!.value,
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                  ),
                ),
                Container(
                  width: 100.h,
                  margin: EdgeInsets.only(bottom: 5.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Obx(
                    () => Text(
                      vouchercomponent1ItemModelObj.validUntilDate!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
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
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => CustomImageView(
                              imagePath: vouchercomponent1ItemModelObj
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
                                vouchercomponent1ItemModelObj
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
                          vouchercomponent1ItemModelObj.discountText!.value,
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
