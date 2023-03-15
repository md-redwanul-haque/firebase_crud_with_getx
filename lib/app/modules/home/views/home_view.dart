import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../components.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
              child: LoginEditField(
                hintText: 'Please Input Email',
                secureVal: false,
              )
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                initialValue: "Pass",
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Email',
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: (){}, child: Text(" Login ")),
                ElevatedButton(onPressed: (){}, child: Text(" Registration "))
              ],
            )
          ],
        )
      ),
    );
  }
}
