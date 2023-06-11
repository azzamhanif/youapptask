import 'package:get/get.dart';
import 'package:youapptask/app/data/models/user_model.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  var isEdit = false.obs;
  Rx<User> data = User().obs;
  var isDataCompleted = false.obs;

  void OnEdit(){
    isEdit.value = !isEdit.value;
  }

  void initData(){
    data.value = User(name: 'Halo');
    isDataCompleted.value = true;
  }

  @override
  void onInit() {
    super.onInit();
    initData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
