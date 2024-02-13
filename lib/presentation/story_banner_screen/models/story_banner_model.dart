import 'salebanner1_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [story_banner_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StoryBannerModel {Rx<List<Salebanner1ItemModel>> salebanner1ItemList = Rx(List.generate(1,(index) => Salebanner1ItemModel()));

 }
