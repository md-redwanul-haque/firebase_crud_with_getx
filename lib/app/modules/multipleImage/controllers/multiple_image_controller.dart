import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class MultipleImageController extends GetxController {
  //TODO: Implement MultipleImageController

  final ImagePicker picker = ImagePicker();
  List<XFile> images =[];
  List<String> imagepaths =[];
  var selectFileCount =0.obs;


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void selectMultipleImage() async{
    images = await picker.pickMultiImage();
    if(images !=null){

      for(XFile file in images){
        imagepaths.add(file.path);
      }

    }else{
      Get.snackbar('Fail', 'No Image Selected',backgroundColor: Colors.red.shade50,colorText: Colors.white);
    }


  }
}
