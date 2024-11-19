import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';


import 'package:kptourism/Admin%20panel/dishborad.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  TextEditingController AdminEmailController = TextEditingController();
  TextEditingController AdminPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        title: const Text("Login"),
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
                  controller: AdminEmailController,
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
                  controller: AdminPasswordController,
                  decoration: const InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                    enabledBorder: OutlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 3.h,),

              GestureDetector(
                onTap: () async {
                  try {
                    final doc = await FirebaseFirestore.instance.collection("admin").doc("adminLogin").get();
                    final data = doc.data();
                    if (data != null && data['adminEmail'] == AdminEmailController.text && data['adminPassword'] == AdminPasswordController.text) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Dishborad()));
                    } else {
                      // Show error message
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                title: Text("Login Failed"),
                            content: Text("Invalid email or password"),
                            );
                          });
                    }
                  } catch (e) {
                    // Handle errors
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Error"),
                            content: Text(e.toString()),
                          );
                        });
                  }
                },
                child: Container(
                  height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Center(child: Text('Admin Login'))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
