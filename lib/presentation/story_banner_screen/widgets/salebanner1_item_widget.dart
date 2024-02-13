import '../controller/story_banner_controller.dart';
import '../models/salebanner1_item_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Salebanner1ItemWidget extends StatelessWidget {
  Salebanner1ItemWidget(
    this.salebanner1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Salebanner1ItemModel salebanner1ItemModelObj;

  var controller = Get.find<StoryBannerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgC59dc391Dbc84,
            height: 130.v,
            width: 335.h,
            radius: BorderRadius.circular(
              9.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 3.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup60,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 11.v),
                  Text(
                    "lbl_big_sale".tr,
                    style: CustomTextStyles.headlineMediumOnErrorContainer,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "lbl_up_to_50".tr,
                    style:
                        CustomTextStyles.labelLargeNunitoSansOnErrorContainer,
                  ),
                  SizedBox(height: 29.v),
                  SizedBox(
                    width: 57.h,
                    child: Text(
                      "lbl_happening_now".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.labelMediumOnErrorContainer.copyWith(
                        height: 1.36,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
