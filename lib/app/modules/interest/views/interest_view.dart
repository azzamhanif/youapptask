import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:youapptask/app/routes/app_pages.dart';
import 'package:youapptask/app/util/palette.dart';

import '../controllers/interest_controller.dart';

class InterestView extends GetView<InterestController> {
  const InterestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.symmetric(horizontal: 16),
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
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.chevron_left,color: Colors.white,size: 20,),
                            Text('Back',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        controller.addTags(data: controller.tagController.getTags);
                        Get.back();
                        // Get.offAndToNamed(Routes.PROFILE);
                      },
                      child: GradientText(
                        'Save',
                        style: TextStyle(fontSize: 14),
                        colors: buttonColor,
                      )
                    ),
                  ],
                ),
                SizedBox(height: 74,),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: GradientText(
                    gradientDirection: GradientDirection.rtl,
                    'Tell everyone about yourself',
                    colors: golden
                  ),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('What interest you?',
                    style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 35,),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Autocomplete<String>(
                    optionsViewBuilder: (context, onSelected, options) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 4.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Material(
                            elevation: 4.0,
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxHeight: 200),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: options.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final dynamic option = options.elementAt(index);
                                  return TextButton(
                                    onPressed: () {
                                      onSelected(option);
                                    },
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15.0),
                                        child: Text(
                                          '$option',
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      if (textEditingValue.text == '') {
                        return const Iterable<String>.empty();
                      }
                      return controller.tags.where((String option) {
                        return option.contains(textEditingValue.text.toLowerCase());
                      });
                    },
                    onSelected: (String selectedTag) {
                      controller.tagController.addTag = selectedTag;
                    },
                    fieldViewBuilder: (context, ttec, tfn, onFieldSubmitted) {
                      return TextFieldTags(
                        textEditingController: ttec,
                        focusNode: tfn,
                        textfieldTagsController: controller.tagController,
                        initialTags: const [

                        ],
                        textSeparators: const [' ', ','],
                        letterCase: LetterCase.normal,
                        validator: (String tag) {
                          if (controller.tagController.getTags!.contains(tag)) {
                            return 'you already entered that';
                          }
                          return null;
                        },
                        inputfieldBuilder:
                            (context, tec, fn, error, onChanged, onSubmitted) {
                          return ((context, sc, tags, onTagDelete) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: TextField(
                                controller: tec,
                                focusNode: fn,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 8),
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(.06),
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
                                  errorText: error,
                                  prefixIconConstraints: BoxConstraints(
                                      maxWidth: Get.width * 0.6),
                                  prefixIcon: tags.isNotEmpty
                                      ? SingleChildScrollView(
                                      controller: sc,
                                      scrollDirection: Axis.horizontal,
                                      physics: NeverScrollableScrollPhysics(),
                                      child: Row(
                                          children: tags.map((String tag) {
                                            return Container(
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(7.0),
                                                ),
                                                color: Color(0x20ffffff),
                                              ),
                                              margin:
                                              const EdgeInsets.symmetric(horizontal: 5.0),
                                              padding: const EdgeInsets.all(8),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  InkWell(
                                                    child: Text(
                                                      '$tag',
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                    onTap: () {
                                                      //print("$tag selected");
                                                    },
                                                  ),
                                                  const SizedBox(width: 4.0),
                                                  InkWell(
                                                    child: const Icon(
                                                      Icons.cancel,
                                                      size: 14.0,
                                                      color: Color.fromARGB(
                                                          255, 233, 233, 233),
                                                    ),
                                                    onTap: () {
                                                      onTagDelete(tag);
                                                    },
                                                  )
                                                ],
                                              ),
                                            );
                                          }).toList()),
                                  )
                                      : null,
                                ),
                                onChanged: onChanged,
                                onSubmitted: onSubmitted,
                              ),
                            );
                          });
                        },
                      );
                    },
                  ),
                ),
                
              ],
            ),
          )
        ),
      ),
    );
  }
}
