import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../components.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
   HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getTodo();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: controller.email,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Email',
                ),
              )
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: controller.passWord,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Email',
                ),
              ),
            ),


            ElevatedButton(onPressed: () async{
              var newUser =await controller.authentication.createUserWithEmailAndPassword(
                  email: controller.email.text, password: controller.passWord.text);
              print("newUser#########${newUser}");

            }, child: Text(" Login ")),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${controller.responseResult?['title1']==null?"loading":controller.responseResult['title1']}",
              maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${controller.responseResult?['title2']==null?"loading":controller.responseResult['title2']}",
                maxLines: 3,
              ),
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //
            //     ElevatedButton(onPressed: (){}, child: Text(" Registration "))
            //   ],
            // )
          ],
        )
      ),
    );
  }
}
