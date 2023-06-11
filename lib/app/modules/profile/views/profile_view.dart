import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:youapptask/app/modules/profile/views/widget/about_profile_widget.dart';
import 'package:youapptask/app/modules/profile/views/widget/edit_profile_form_widget.dart';
import 'package:youapptask/app/util/palette.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: solidBackground
        ),
        child: Obx(() => SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
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
                    Text('@johndoe',style: TextStyle(color: Colors.white,fontSize: 14),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.white,)),


                  ],
                ),
                SizedBox(height: 28,),
                Container(
                  height: 190,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: sectionColor,
                    borderRadius: BorderRadius.circular(16),
                    image: !controller.isDataCompleted.value
                      ? null
                      :
                        DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/img_sample.png')
                        )
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 13,vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: !controller.isDataCompleted.value
                        ? null
                        :
                          LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(.7),
                              Colors.transparent,
                              Colors.black.withOpacity(.7)
                            ]
                          )
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('@Johndoe123',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
                              if(controller.isDataCompleted.value)
                                Column(
                                  children: [
                                    SizedBox(height: 6,),
                                    Text('Male',style: TextStyle(color: Colors.white,fontSize: 13),),
                                    SizedBox(height: 20,),
                                  ],
                                ),

                              if(controller.isDataCompleted.value)
                                Row(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.ac_unit,color: Colors.white,size: 20,),
                                          SizedBox(width: 10,),
                                          Text('Male',style: TextStyle(color: Colors.white,fontSize: 14),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 40,),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.ac_unit,color: Colors.white,size: 20,),
                                          SizedBox(width: 10,),
                                          Text('Male',style: TextStyle(color: Colors.white,fontSize: 14),),
                                        ],
                                      ),
                                    ),
                                  ],
                                )

                            ],
                          ),
                        ),
                        if(!controller.isDataCompleted.value)
                          Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: (){
                            },
                            child: SvgPicture.asset('assets/icons/ic_edit.svg')),
                        ),

                      ],
                    ),
                  ),
                ),

                ///About
                SizedBox(height: 24,),
                AnimatedContainer(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 13),
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: cardInfoDarkColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('About',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                          GestureDetector(
                              onTap: (){
                                controller.OnEdit();
                              },
                              child: SvgPicture.asset('assets/icons/ic_edit.svg')),
                        ],
                      ),
                      SizedBox(height: 33,),

                      if(!controller.isDataCompleted.value && !controller.isEdit.value)
                        Container(
                            width: 275,
                            child: Text('Add in your your to help others know you better',style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(.52)),)),

                      if(controller.isDataCompleted.value && !controller.isEdit.value)
                        AboutProfileWidget(),

                      if(controller.isEdit.value)
                        const EditProfileFormWidget()

                    ],
                  )

                  // (!controller.isEdit.value)
                  //   ? (!controller.isDataCompleted.value)
                  //       ?
                  //         Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text('About',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                  //                 GestureDetector(
                  //                     onTap: (){
                  //                       controller.OnEdit();
                  //                     },
                  //                     child: SvgPicture.asset('assets/icons/ic_edit.svg')),
                  //               ],
                  //             ),
                  //             SizedBox(height: 33,),
                  //             Container(
                  //                 width: 275,
                  //                 child: Text('Add in your your to help others know you better',style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(.52)),))
                  //           ],
                  //         )
                  //       :
                  //         Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text('About',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                  //                 GestureDetector(
                  //                     onTap: (){
                  //                       controller.OnEdit();
                  //                     },
                  //                     child: SvgPicture.asset('assets/icons/ic_edit.svg')),
                  //               ],
                  //             ),
                  //             SizedBox(height: 24,),
                  //             Container(
                  //                 child: Row(
                  //                   children: [
                  //                     Text('Birthday: ',style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(.52)),),
                  //                   ],
                  //                 ))
                  //           ],
                  //         )
                  //
                  //   :
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             Text('About',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                  //             GestureDetector(
                  //                 onTap: (){
                  //                   controller.OnEdit();
                  //                 },
                  //                 child: GradientText(
                  //                   style: TextStyle(fontSize: 12),
                  //                   'Save & Update.', colors: golden)),
                  //           ],
                  //         ),
                  //         ///Form
                  //         EditProfileFormWidget()
                  //
                  //       ],
                  //     )
                  ,
                ),

                ///Interest
                SizedBox(height: 24,),
                AnimatedContainer(
                  padding: EdgeInsets.symmetric(horizontal: 16,vertical: 13),
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: cardInfoDarkColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Interest',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
                          GestureDetector(
                            onTap: (){},
                            child: SvgPicture.asset('assets/icons/ic_edit.svg')),
                        ],
                      ),
                      SizedBox(height: 33,),
                      Container(
                        width: 275,
                        child: Text('Add in your interest to find a better match',style: TextStyle(fontSize: 14,color: Colors.white.withOpacity(.52)),))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
