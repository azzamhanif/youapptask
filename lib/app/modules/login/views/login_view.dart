import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:youapptask/app/routes/app_pages.dart';
import 'package:youapptask/app/util/palette.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: backgroundColor,
            center: Alignment(.6,-.8),
            radius: 1

          )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    child: Row(
                      children: [
                        Icon(CupertinoIcons.chevron_left,color: Colors.white,size: 20,),
                        Text('Back',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 60,),
                Text('Login',style: TextStyle(fontSize: 24,color: Colors.white),),
                SizedBox(height: 25,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: controller.usernameController,
                  style: TextStyle(fontSize: 13,color: Colors.white),
                  onChanged: (_){
                    controller.checkIfEmpty();
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(.06),
                    hintText: 'Enter Username/Email',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                    contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(9),
                    ),
                  )
                ),
                SizedBox(height: 15,),
                TextFormField(
                  obscureText: !controller.showPassword.value,
                  controller: controller.passwordController,
                  onChanged: (_){
                    controller.checkIfEmpty();
                  },
                  style: TextStyle(fontSize: 13,color: Colors.white),
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: controller.tooglePassword,
                        child: ShaderMask(
                          shaderCallback: (rect) => LinearGradient(
                            colors: golden
                          ).createShader(rect),
                          child: Icon(
                            controller.showPassword.value
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(.06),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                    contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(9),
                    ),
                  )
                ),
                SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: buttonColor
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: SizedBox(
                    width: Get.width,
                    height: 48,
                    child: Container(
                      child: ElevatedButton(
                        onPressed: (!controller.enableButton.value)
                          ? null
                          : (){
                        },
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 52,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('No Account? ',style: TextStyle(color: Colors.white,fontSize: 13),),
                      TextButton(
                        onPressed: (){
                          Get.offNamed(Routes.REGISTER);
                        },
                        child: GradientText(
                          'Register Now',
                          style: TextStyle(fontSize: 13),
                          gradientType: GradientType.linear,
                          gradientDirection: GradientDirection.btt,
                          colors: golden,
                        )
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
