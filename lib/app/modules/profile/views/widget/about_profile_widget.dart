import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youapptask/app/modules/profile/controllers/profile_controller.dart';

class AboutProfileWidget extends GetView<ProfileController> {
  const AboutProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Text('Birthday: ',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(.52)),),
                Text('28 / 08 / 1995 (Age28)',style: TextStyle(fontSize: 13,color: Colors.white),),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Text('Horoscope: ',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(.52)),),
                Text('Virgo',style: TextStyle(fontSize: 13,color: Colors.white),),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Text('Zodiac: ',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(.52)),),
                Text('Pig',style: TextStyle(fontSize: 13,color: Colors.white),),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Text('Height: ',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(.52)),),
                Text('175 cm',style: TextStyle(fontSize: 13,color: Colors.white),),
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Text('Weight: ',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(.52)),),
                Text('69 kg',style: TextStyle(fontSize: 13,color: Colors.white),),
              ],
            ),
            SizedBox(height: 16,),
          ],
        ));
  }
}
