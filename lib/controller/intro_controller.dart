

import 'package:get/get.dart';
import 'package:warehouse_version1/view/login.dart';

class IntroController extends GetxController{


  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(milliseconds: 1500)).then((value){
      Get.to(()=> Login());
    });
  }

}