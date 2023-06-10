import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  var showPassword = false.obs;
  var enableButton = false.obs;
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  void checkIfEmpty(){
    if(usernameController.text.isNotEmpty && passwordController.text.isNotEmpty)
      enableButton.value = true;
    else
      enableButton.value = false;
  }

  void login(){

  }

  void tooglePassword(){
    showPassword.value = !showPassword.value;
  }

  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
    checkIfEmpty();
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    passwordController.dispose();
  }

}
