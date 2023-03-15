
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LoginEditField extends StatelessWidget {
  final String hintText;

  TextEditingController? controller;
  String? errorText;
  bool? secureVal;
  // RxBool? validate=false.obs;

  LoginEditField({
    Key? key,
    required this.hintText,
     this.controller,
    this.errorText,
    this.secureVal,
   // this.validate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if (value == null || value.isEmpty) {
          return 'Please_enter'.trParams({'value':'email'.tr});
        }else if(!value.isEmail){
          return 'Please_enter_valid'.trParams({'value':'email'.tr});
        }
        return null;
      },
      controller: controller,
      obscureText: secureVal!,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12),
          hintText: hintText,
        ),
    );
  }
}
