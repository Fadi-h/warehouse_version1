

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

 RxBool loginOption = false.obs;
 RxBool showPassword = false.obs;
 TextEditingController email = TextEditingController();
 TextEditingController pass = TextEditingController();


}