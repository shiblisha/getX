import 'package:get/get.dart';
import 'package:untitled/Api/productApi.dart';
import 'package:untitled/MdelClass/ProductModel.dart';

class ProductController extends GetxController {
  var productModel =ProductModel().obs;
  getProducts()async{
  try{
    var data = await ProductApi().fetchService();
    if(data!=null){
      productModel.value= data;
    }


  }
  catch(e){
    Get.snackbar("title", "$e");
  }
  }

  @override
  void onInit() {
    getProducts();
    // TODO: implement onInit
    super.onInit();
  }
}
