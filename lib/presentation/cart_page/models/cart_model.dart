import '../../../core/app_export.dart';import 'productlist3_item_model.dart';import 'userprofile6_item_model.dart';/// This class defines the variables used in the [cart_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {Rx<List<Productlist3ItemModel>> productlist3ItemList = Rx([Productlist3ItemModel(image:ImageConstant.img738744ce99a44.obs,image1:ImageConstant.img92caf77e01b541.obs,text: "Lorem ipsum dolor sit amet consectetur.".obs,title: "Pink, Size M".obs,price: "17,00".obs),Productlist3ItemModel(image:ImageConstant.img486cee221ce54.obs,image1:ImageConstant.img922654839e7e4101x121.obs,text: "Lorem ipsum dolor sit amet consectetur.".obs,title: "Pink, Size M".obs,price: "17,00".obs)]);

Rx<List<Userprofile6ItemModel>> userprofile6ItemList = Rx([Userprofile6ItemModel(userImage:ImageConstant.img486cee221ce54.obs,userImage1:ImageConstant.img2289c231211f4101x121.obs,thumbsUp:ImageConstant.imgThumbsUp.obs,loremIpsumDolor: "Lorem ipsum dolor sit amet consectetur.".obs,title: "17,00".obs)]);

 }
