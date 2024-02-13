import '../controller/filter_controller.dart';
import '../models/viewhierarchy2_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Viewhierarchy2ItemWidget extends StatelessWidget {
  Viewhierarchy2ItemWidget(
    this.viewhierarchy2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy2ItemModel viewhierarchy2ItemModelObj;

  var controller = Get.find<FilterController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 62.v,
          width: 60.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: AppDecoration.outlineBlack900024.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Obx(
                () => CustomIconButton(
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.outlineOnErrorContainer,
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                    imagePath:
                        viewhierarchy2ItemModelObj.dynamicIconButton!.value,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 9.v),
        Obx(
          () => Text(
            viewhierarchy2ItemModelObj.dynamicText!.value,
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
