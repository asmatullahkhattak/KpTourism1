import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserBooking extends StatefulWidget {
  const UserBooking({super.key});

  @override
  State<UserBooking> createState() => _UserBookingState();
}

class _UserBookingState extends State<UserBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(

          stream: FirebaseFirestore.instance.collection("Booking").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot.error}"),
                  // Handle errors
                );
              }

              if (snapshot.hasData) {
                final documents = snapshot.data!.docs; // Get documents

                return ListView.builder(
                    itemCount: documents.length,
                    itemBuilder: (context, index) {
                      final document = documents[index]; // Use document

                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.greenAccent,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('User Name'),
                                      SizedBox(width: 50,),
                                      Text ("${snapshot.data!.docs[index]["userName"]}"),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('phone Number'),
                                      SizedBox(width: 50,),
                                      Text ("${snapshot.data!.docs[index]["userPhone"]}"),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('User Whatsapp'),
                                      SizedBox(width: 50,),
                                      Text ("${snapshot.data!.docs[index]["userWhatsap"]}"),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('Person'),
                                      SizedBox(width: 50,),
                                      Text ("${snapshot.data!.docs[index]["userPerson"]}"),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text('User Email'),
                                      SizedBox(width: 50,),
                                      Text ("${snapshot.data!.docs[index]["userEmail"]}"),
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                      );
                    });
              }

              return const Center(
                child: Text("No Data Found"),
              );
            }

            return const Center(
                child: CircularProgressIndicator()); // Loading indicator
          }),
    );
  }
}
