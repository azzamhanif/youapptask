import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youapptask/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  var showPassword = false.obs;
  var enableButton = false.obs;
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();


  void checkIfEmpty(){
    if(usernameController.text.isNotEmpty && emailController.text.isNotEmpty && passwordController.text.isNotEmpty && confirmPasswordController.text.isNotEmpty)
      enableButton.value = true;
    else
      enableButton.value = false;
  }

  String? emailValidator(String value){
    if(!emailController.text.isEmail)
      return 'Please enter a valid email';
    return null;
  }

  String? passwordValidator(String value){
    if(passwordController.text.length<6)
      return 'passwords must be at leaste 6 characters';
    return null;
  }

  String? confirmPasswordValidator(String value){
    if(confirmPasswordController.text != passwordController.text)
      return 'passwords do not match';
    return null;
  }

  void register(){
    var isValid = registerFormKey.currentState!.validate();
    if(isValid){
      Get.toNamed(Routes.HOME);
    }
  }

  void tooglePassword(){
    showPassword.value = !showPassword.value;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

}
