
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kptourism/ui/login_screen/signin.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();

}

SignUpUser(String userName, String userPhone, String userEmail,
    String userPassword) async {
  User? currentUser = FirebaseAuth.instance.currentUser;
  try {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser!.uid)
        .set({
      'userName': userName,
      'userPhone': userPhone,
      'userEmail': userEmail,
      'create At': DateTime.now(),
      'userId': currentUser.uid,

    }).then((value) => {
      FirebaseAuth.instance.signOut(),
      Get.to(() => LoginScreen()),
    });
  } on FirebaseAuthException catch (e) {
    print("error $e");
  }
}


class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userPhoneController = TextEditingController();
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        title: const Text("Sign Up"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 32.h,
                color: Colors.white60,
                child: Lottie.asset("assets/places/karak1.json"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "User Name",
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
               SizedBox(height: 1.8.h),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: userPhoneController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: "phone",
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
               SizedBox(height: 1.7.h),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: userEmailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "E-mail",
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 1.7.h),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  controller: userPasswordController,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 1.7.h),
              Container(
                height: 7.h,
                width: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
                child: Center(
                    child: GestureDetector(
                      onTap: () {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                            email: userEmailController.text.trim(),
                            password: userPasswordController.text.trim())
                            .then((value) => {
                          SignUpUser(


                              userNameController.text.trim(),
                              userPhoneController.text.trim(),
                              userEmailController.text.trim(),
                              userPasswordController.text.trim(),
                          )
                        });
                      },
                      child: Text(
                        'SignUp',
                        style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: .25.dp),
                      ),
                    )),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
