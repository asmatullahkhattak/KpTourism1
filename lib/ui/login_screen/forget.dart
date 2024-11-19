
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kptourism/main.dart';
import 'package:kptourism/ui/login_screen/signin.dart';
import 'package:responsive_sizer/responsive_sizer.dart';





class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController forgetPasswordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        title: const Text("Forget Password"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          SizedBox(height: 3.h,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              controller: forgetPasswordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "E-mail",
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 2.h,),

          ElevatedButton(
              child: Text("Forget password"),
              onPressed: (){

                  Get.off(()=> LoginScreen());
                }
                ),


        ],
      ),
    );


  }
}
