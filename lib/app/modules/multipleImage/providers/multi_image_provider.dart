

import 'dart:io';

import 'package:get/get.dart';

class MultiImageProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<String> uploadImage(List<String> list){

  try{

    var form = FormData({});

    for(String path in list){
      form.fields.add(MapEntry("file[]", MultipartFile(File(path),filename: "${DateTime.now().millisecondsSinceEpoch}.${path.split('.').last}").toString()));
    }


  }catch(e){
    return Future.error(e.toString());
  }


  }



}
