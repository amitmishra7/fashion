import '../my_vouchers_page/widgets/vouchercomponent1_item_widget.dart';
import 'controller/my_vouchers_controller.dart';
import 'models/my_vouchers_model.dart';
import 'models/vouchercomponent1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class MyVouchersPage extends StatelessWidget {
  MyVouchersPage({Key? key})
      : super(
          key: key,
        );

  MyVouchersController controller =
      Get.put(MyVouchersController(MyVouchersModel().obs));

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
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
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
            itemCount: controller.myVouchersModelObj.value
                .vouchercomponent1ItemList.value.length,
            itemBuilder: (context, index) {
              Vouchercomponent1ItemModel model = controller.myVouchersModelObj
                  .value.vouchercomponent1ItemList.value[index];
              return Vouchercomponent1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
