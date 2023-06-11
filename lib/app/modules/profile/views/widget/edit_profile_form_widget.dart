
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youapptask/app/modules/profile/controllers/profile_controller.dart';
import 'package:youapptask/app/util/palette.dart';

class EditProfileFormWidget extends GetView<ProfileController> {

  const EditProfileFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
                width: 57,
                height: 57,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.08),
                    borderRadius: BorderRadius.circular(16)
                ),
                // padding: EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: (){},
                  child: ShaderMask(
                    shaderCallback: (rect) => LinearGradient(
                        colors: golden
                    ).createShader(rect),
                    child: Icon(Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
            ),
            SizedBox(width: 16,),
            Text('Add Image',style: TextStyle(fontSize: 12,color: Colors.white),)
          ],
        ),
        SizedBox(height: 29,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                width: Get.width*.2,
                child: Text('Display name',style: TextStyle(color: Colors.white.withOpacity(.33),fontSize: 12),),
              ),
            ),
            SizedBox(
              width: Get.width*.6,
              child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.text,
                  // controller: controller.usernameController,
                  style: TextStyle(fontSize: 13,color: Colors.white,),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(.06),
                    hintText: 'Enter Name',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                    contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 14),
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
            )
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                width: Get.width*.2,
                child: Text('Gender',style: TextStyle(color: Colors.white.withOpacity(.33),fontSize: 12),),
              ),
            ),
            SizedBox(
              width: Get.width*.6,
              child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.text,
                  // controller: controller.usernameController,
                  style: TextStyle(fontSize: 13,color: Colors.white,),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(.06),
                    hintText: '',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                    contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 14),
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
            )
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                width: Get.width*.2,
                child: Text('Birthday',style: TextStyle(color: Colors.white.withOpacity(.33),fontSize: 12),),
              ),
            ),
            SizedBox(
              width: Get.width*.6,
              child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.text,
                  // controller: controller.usernameController,
                  style: TextStyle(fontSize: 13,color: Colors.white,),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(.06),
                    hintText: '',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                    contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 14),
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
            )
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                width: Get.width*.2,
                child: Text('Horoscope',style: TextStyle(color: Colors.white.withOpacity(.33),fontSize: 12),),
              ),
            ),
            SizedBox(
              width: Get.width*.6,
              child: TextFormField(
                enabled: false,
                textAlign: TextAlign.right,
                keyboardType: TextInputType.text,
                // controller: controller.usernameController,
                style: TextStyle(fontSize: 13,color: Colors.white,),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(.06),
                  hintText: '',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                  contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 14),
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
            )
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                width: Get.width*.2,
                child: Text('Zodiac',style: TextStyle(color: Colors.white.withOpacity(.33),fontSize: 12),),
              ),
            ),
            SizedBox(
              width: Get.width*.6,
              child: TextFormField(
                enabled: false,
                textAlign: TextAlign.right,
                keyboardType: TextInputType.text,
                // controller: controller.usernameController,
                style: TextStyle(fontSize: 13,color: Colors.white,),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(.06),
                  hintText: '',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                  contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 14),
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
            )
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                width: Get.width*.2,
                child: Text('Height',style: TextStyle(color: Colors.white.withOpacity(.33),fontSize: 12),),
              ),
            ),
            SizedBox(
              width: Get.width*.6,
              child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  // controller: controller.usernameController,
                  style: TextStyle(fontSize: 13,color: Colors.white,),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(.06),
                    hintText: 'Add height',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                    contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 14),
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
            )
          ],
        ),
        SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                width: Get.width*.2,
                child: Text('Weight',style: TextStyle(color: Colors.white.withOpacity(.33),fontSize: 12),),
              ),
            ),
            SizedBox(
              width: Get.width*.6,
              child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  // controller: controller.usernameController,
                  style: TextStyle(fontSize: 13,color: Colors.white,),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white.withOpacity(.06),
                    hintText: 'Add weight',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(.4),fontSize: 13),
                    contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0,right: 14),
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
            )
          ],
        ),
        SizedBox(height: 12,),
      ],
    );
  }
}
