


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:kptourism/Admin%20panel/tour_package/auth_controller.dart';
import 'package:kptourism/ui/login_screen/admin_login.dart';

import 'package:lottie/lottie.dart';
import 'package:kptourism/ui/Signup_screen/signup.dart';
import 'package:kptourism/ui/login_screen/forget.dart';
import 'package:kptourism/widgets/bottom_nav_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

   TextEditingController loginEmailController = TextEditingController();
   TextEditingController loginPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        title: const Text("Log in"),
        actions: const [
          Icon(Icons.more_vert)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 35.h,
                  color: Colors.white60,
                  child: Lottie.asset("assets/places/karak.json"),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: loginEmailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "E-mail",
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
               SizedBox(height: 2.h,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: loginPasswordController,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 2.h,),

              GestureDetector(
                onTap: () async {
                  var LoginEmail = loginEmailController.text.trim();
                  var LoginPassword = loginPasswordController.text.trim();

                  try {
                    final User? FirebaseUser = (await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                        email: LoginEmail, password: LoginPassword))
                        .user;
                    if (FirebaseUser != null) {
                      Get.to(() => bottom_nav_bar());
                    } else {
                      print('check email and password');
                    }
                  } on FirebaseAuthException catch (e) {
                    print("error $e");
                  }
                },
                child: Container(
                  height: 7.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Center(
                      child: Text(
                        'Login',
                        style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: .25.dp),
                      )),
                ),
              ),

              SizedBox(height: 1.5.h,),
              GestureDetector(
                onTap: (){

                  Get.to(()=>ForgetPassword());

                },
                child: Container(
                  child: const Card(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Forget Password"),
                  )),
                ),
              ),
              SizedBox(height: 1.7.h,),
              GestureDetector(
                onTap: (){
                  Get.to(()=> SignupScreen());
                },
                child: Container(
                  child: const Card(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Don't have account Sign Up"),
                  )),
                ),
              ),
              SizedBox(height: 1.7.h,),
              GestureDetector(
                onTap: (){
                  Get.to(()=> AdminLogin());
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(child: Text("Admin Login")),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}




