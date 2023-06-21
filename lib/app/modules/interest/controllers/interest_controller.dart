import 'dart:ffi';
import 'package:get/get.dart';
import 'package:textfield_tags/textfield_tags.dart';

class InterestController extends GetxController {
  //TODO: Implement InterestController

  List<String> tags = <String>[
    'Music',
    'Basketball',
    'Fitness',
    'Gymming',
    'Swimming',
    'Programming',
    'Writing',
  ];

  List<String> selectedTags = [];
  late TextfieldTagsController tagController;

  void addTags({data}){
    selectedTags = data;
    update();

  }

  @override
  void onInit() {
    super.onInit();
    tagController = TextfieldTagsController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    // tagController.dispose();
  }

}
