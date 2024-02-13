import 'tags_item_model.dart';import 'recommendations_item_model.dart';import '../../../core/app_export.dart';import 'discover_item_model.dart';/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {Rx<List<TagsItemModel>> tagsItemList = Rx(List.generate(5,(index) =>TagsItemModel()));

Rx<List<RecommendationsItemModel>> recommendationsItemList = Rx(List.generate(5,(index) =>RecommendationsItemModel()));

Rx<List<DiscoverItemModel>> discoverItemList = Rx([DiscoverItemModel(image1:ImageConstant.img1e7ba25e18a34.obs,image2:ImageConstant.img4aa32357E9fc4129x130.obs,text1: "Lorem ipsum dolor sit amet consectetur.".obs,text2: "125,00".obs),DiscoverItemModel(image1:ImageConstant.imgD7f2eeeeB6f04.obs,image2:ImageConstant.img32eb245aE30d4129x130.obs,text1: "Lorem ipsum dolor sit amet consectetur.".obs,text2: "32,00".obs),DiscoverItemModel(image1:ImageConstant.img51c2a79862b34.obs,image2:ImageConstant.imgAb90e177Ebd541.obs,text1: "Lorem ipsum dolor sit amet consectetur.".obs,text2: "21,00".obs)]);

 }
