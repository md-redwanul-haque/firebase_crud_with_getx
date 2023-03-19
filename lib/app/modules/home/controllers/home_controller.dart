import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final email = TextEditingController();
  final passWord = TextEditingController();
  final authentication = FirebaseAuth.instance;
  final count = 0.obs;

  FirebaseFirestore db  = FirebaseFirestore.instance;

  var responseResult;
  
  getTodo(){
    db.collection('crud').get().then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((element) {
        responseResult=element.data();
        print("responseResult${responseResult}");
      });
    });
    
    
  }



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

  void increment() => count.value++;
}
