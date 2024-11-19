import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserEnter extends StatefulWidget {
  const UserEnter({super.key});

  @override
  State<UserEnter> createState() => _UserEnterState();
}

class _UserEnterState extends State<UserEnter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Login"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: StreamBuilder(stream: FirebaseFirestore.instance.collection("users").snapshots(),
          builder: (context , snapshot){
            if(snapshot.connectionState==ConnectionState.active){
              if(snapshot.hasData){
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder:
                        (context, index){
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 400,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.greenAccent,
                            ),
                            child: Column(

                              children: [
                                SizedBox(height: 20,),
                                Text ("${snapshot.data!.docs[index]["userName"]}"),
                                Text("${snapshot.data!.docs[index]["userPhone"]}"),
                                Text("${snapshot.data!.docs[index]["userEmail"]}"),

                              ],
                            ),
                          ),
                        ),
                      );
                    });
              }
              else if(snapshot.hasError){
                return Center(
                  child: Text("${snapshot.hasError.toString()}"),
                );
              }
              else{
                return Center(
                  child: Text("No Data Found"),
                );
              }
            }
            else{
              return Center(child: CircularProgressIndicator(),);
            }
          }),
    );
  }
}
