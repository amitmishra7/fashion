import '../voucher_is_gonna_expire_page/widgets/vouchercomponent2_item_widget.dart';
import 'controller/voucher_is_gonna_expire_controller.dart';
import 'models/voucher_is_gonna_expire_model.dart';
import 'models/vouchercomponent2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class VoucherIsGonnaExpirePage extends StatelessWidget {
  VoucherIsGonnaExpirePage({Key? key})
      : super(
          key: key,
        );

  VoucherIsGonnaExpireController controller =
      Get.put(VoucherIsGonnaExpireController(VoucherIsGonnaExpireModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              _buildVoucherComponent(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVoucherComponent() {
    return Padding(
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
                  color: appTheme.deepOrange100,
                ),
              ),
            );
          },
          itemCount: controller.voucherIsGonnaExpireModelObj.value
              .vouchercomponent2ItemList.value.length,
          itemBuilder: (context, index) {
            Vouchercomponent2ItemModel model = controller
                .voucherIsGonnaExpireModelObj
                .value
                .vouchercomponent2ItemList
                .value[index];
            return Vouchercomponent2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
