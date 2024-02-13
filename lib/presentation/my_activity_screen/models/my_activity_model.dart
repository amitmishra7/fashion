import 'types_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [my_activity_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyActivityModel {Rx<List<TypesItemModel>> typesItemList = Rx(List.generate(4,(index) =>TypesItemModel()));

 }
