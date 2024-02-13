import '../recently_viewed_date_chosen_page/widgets/placeholderone1_item_widget.dart';
import 'controller/recently_viewed_date_chosen_controller.dart';
import 'models/placeholderone1_item_model.dart';
import 'models/recently_viewed_date_chosen_model.dart';
import 'package:amit_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class RecentlyViewedDateChosenPage extends StatelessWidget {
  RecentlyViewedDateChosenPage({Key? key})
      : super(
          key: key,
        );

  RecentlyViewedDateChosenController controller = Get.put(
      RecentlyViewedDateChosenController(RecentlyViewedDateChosenModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildPlaceholderOne(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaceholderOne() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 246.v,
              crossAxisCount: 2,
              mainAxisSpacing: 5.h,
              crossAxisSpacing: 5.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: controller.recentlyViewedDateChosenModelObj.value
                .placeholderone1ItemList.value.length,
            itemBuilder: (context, index) {
              Placeholderone1ItemModel model = controller
                  .recentlyViewedDateChosenModelObj
                  .value
                  .placeholderone1ItemList
                  .value[index];
              return Placeholderone1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
