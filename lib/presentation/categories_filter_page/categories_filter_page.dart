import '../categories_filter_page/widgets/subcategories_item_widget.dart';
import 'controller/categories_filter_controller.dart';
import 'models/categories_filter_model.dart';
import 'models/subcategories_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:amit_s_application2/widgets/custom_drop_down.dart';
import 'package:amit_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CategoriesFilterPage extends StatelessWidget {
  CategoriesFilterPage({Key? key})
      : super(
          key: key,
        );

  CategoriesFilterController controller =
      Get.put(CategoriesFilterController(CategoriesFilterModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  children: [
                    CustomDropDown(
                      hintText: "lbl_clothing".tr,
                      items: controller.categoriesFilterModelObj.value
                          .dropdownItemList!.value,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(3.h, 3.v, 14.h, 3.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlay,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 50.v,
                      ),
                      onChanged: (value) {
                        controller.onSelected(value);
                      },
                    ),
                    SizedBox(height: 20.v),
                    _buildSubcategories(),
                    SizedBox(height: 20.v),
                    CustomDropDown(
                      hintText: "lbl_shoes".tr,
                      items: controller.categoriesFilterModelObj.value
                          .dropdownItemList1!.value,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(3.h, 3.v, 14.h, 3.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.img4660cdc3c4fd4d49bafa86f395006974,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 50.v,
                      ),
                      onChanged: (value) {
                        controller.onSelected1(value);
                      },
                    ),
                    SizedBox(height: 6.v),
                    CustomDropDown(
                      hintText: "lbl_bags".tr,
                      items: controller.categoriesFilterModelObj.value
                          .dropdownItemList2!.value,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(3.h, 3.v, 14.h, 3.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath:
                              ImageConstant.img12d16610286b4859b734ad16a30d948b,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 50.v,
                      ),
                      onChanged: (value) {
                        controller.onSelected2(value);
                      },
                    ),
                    SizedBox(height: 6.v),
                    _buildAccessories(
                      dynamicImage2: ImageConstant.imgA0a54f52A5f3444x44,
                      dynamicText: "lbl_lingerie".tr,
                    ),
                    SizedBox(height: 6.v),
                    _buildAccessories(
                      dynamicImage2: ImageConstant.img92caf77e01b5444x44,
                      dynamicText: "lbl_accessories".tr,
                    ),
                    SizedBox(height: 6.v),
                    _buildJustForYou(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubcategories() {
    return Obx(
      () => Wrap(
        runSpacing: 9.v,
        spacing: 9.h,
        children: List<Widget>.generate(
          controller.categoriesFilterModelObj.value.subcategoriesItemList.value
              .length,
          (index) {
            SubcategoriesItemModel model = controller.categoriesFilterModelObj
                .value.subcategoriesItemList.value[index];

            return SubcategoriesItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJustForYou() {
    return Container(
      padding: EdgeInsets.all(3.h),
      decoration: AppDecoration.outlineBlack900023.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPlaceholder01(),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 13.v,
              bottom: 10.v,
            ),
            child: Text(
              "lbl_just_for_you2".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSignal,
            height: 13.v,
            width: 14.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 15.v,
              bottom: 15.v,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              right: 5.h,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 30.adaptSize,
              width: 30.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAccessories({
    required String dynamicImage2,
    required String dynamicText,
  }) {
    return Container(
      padding: EdgeInsets.all(3.h),
      decoration: AppDecoration.outlineBlack900023.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 44.adaptSize,
            width: 44.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img12d16610286b4859b734ad16a30d948b,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: dynamicImage2,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              top: 13.v,
              bottom: 10.v,
            ),
            child: Text(
              dynamicText,
              style: theme.textTheme.titleMedium!.copyWith(
                color: appTheme.gray90001,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownGray90001,
            height: 9.v,
            width: 16.h,
            margin: EdgeInsets.only(
              top: 18.v,
              right: 12.h,
              bottom: 17.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPlaceholder01() {
    return SizedBox(
      height: 44.adaptSize,
      width: 44.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img12d16610286b4859b734ad16a30d948b,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgF8382341Af5b444x44,
            height: 44.adaptSize,
            width: 44.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
