import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/multiple_image_controller.dart';

class MultipleImageView extends GetView<MultipleImageController> {
  const MultipleImageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MultipleImageView'),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      )
    );
  }
}
