import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/Controller/productController.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
final controller =Get.put(ProductController());

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Obx((){
          var data = controller.productModel.value;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Container(
                height: 200,
                  width: 300,
                  color: Colors.red,
                  child: Center(child: Text(data.price.toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25,))))
            ],
          );

        })
      ),

    );
  }
}
