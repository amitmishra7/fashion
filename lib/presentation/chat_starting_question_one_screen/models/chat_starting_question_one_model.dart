import 'order_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [chat_starting_question_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatStartingQuestionOneModel {Rx<List<OrderItemModel>> orderItemList = Rx(List.generate(5,(index) =>OrderItemModel()));

 }
