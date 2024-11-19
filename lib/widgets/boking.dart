import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  Future<void> Booking(String userName, String userPhone, String userWhatsapp, String userEmail, String userPerson) async {
    User? currentUser = FirebaseAuth.instance.currentUser;

    try {
      await FirebaseFirestore.instance
          .collection('Booking')
          .doc(currentUser!.uid)
          .set({
        'userName': userName,
        'userPhone': userPhone,
        "userWhatsap": userWhatsapp,
        'userEmail': userEmail,
        'userPerson': userPerson,
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Center(child: Text("Booking Confirmed")),
          duration: Duration(seconds: 8),
        ),
      );
    } on FirebaseAuthException catch (e) {
      print("Error: $e");
    }
  }

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userPhoneController = TextEditingController();
  final TextEditingController userWhatsappController = TextEditingController();
  final TextEditingController userEmailController = TextEditingController();
  final TextEditingController userPersonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        title: const Text("Booking"),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(child: Text("Booking Now", style: TextStyle(fontSize: 30),)),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: userNameController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: " Name",
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
                      hintText: "Contact Number",
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 1.7.h),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: userWhatsappController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: "Whatsapp Number",
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
                      hintText: "G-mail",
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 1.7.h),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    controller: userPersonController,
                    decoration: const InputDecoration(
                      hintText: "How Many Person",
                      prefixIcon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 1.7.h),
                Container(
                  height: 7.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Booking(
                               userNameController.text.trim(),
                              userPhoneController.text.trim(),
                              userWhatsappController.text.trim(),
                              userEmailController.text.trim(),
                              userPersonController.text.trim()
                          );
                        },
                        child: Center(
                          child: Text(
                            'Booking Now',
                            style:
                            GoogleFonts.poppins(color: Colors.white, fontSize: .22.dp),
                          ),
                        ),
                      )),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
