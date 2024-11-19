import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kptourism/ui/login_screen/signin.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({super.key});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  String? name= "";
  String? Email= "";
  Future _getDataFromDatabase() async{
    await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).
    get().then((snapshot) async {
      if (snapshot.exists) {
        setState(() {

          name = snapshot.data()!["userName"];
          Email = snapshot.data()!["userEmail"];
        });
      }
    }
    );
    }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDataFromDatabase();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(color: Colors.white54,
        child: Column(
          children: [
             SizedBox(
              height: 1.h,
            ),
            const ListTile(
              leading: Icon(Icons.arrow_back),
              // trailing: Icon(Icons.menu),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  maxRadius: 65,
                  backgroundImage: AssetImage("assets/places/img19.jpg"),
                ),
              ],
            ),
             SizedBox(
              height: 2.h,
            ),
            // const Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     CircleAvatar(
            //       backgroundImage: AssetImage("assets/places/place2/jpg"),
            //     ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     CircleAvatar(
            //       backgroundImage:
            //       AssetImage("assets/places/place2/jpg"),
            //     ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     CircleAvatar(
            //       backgroundImage: AssetImage(
            //           "assets/places/place2/jpg"),
            //     ),
            //     SizedBox(
            //       width: 15,
            //     ),
            //     CircleAvatar(
            //       backgroundImage:
            //       AssetImage("assets/places/place2/jpg"),
            //     )
            //   ],
            // ),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name!, style: TextStyle(fontSize: 25),

                  ),
                )
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Email!,
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
             SizedBox(
              height: 1.2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [

              ],
            ), SizedBox(
              height: 1.3.h,
            ),
            Container(
              child: Expanded(
                  child: ListView(
                    children: [
                      Card(
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child:  ListTile(
                          leading: Icon(
                            Icons.privacy_tip_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Privacy',
                            style: TextStyle(
                                fontSize: .25.dp, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 1.h,
                      ),


                      Card(
                        color: Colors.white,
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child:  ListTile(
                          leading:
                          Icon(Icons.help_outline, color: Colors.black54),
                          title: Text(
                            'Help & Support',
                            style: TextStyle(
                                fontSize: .25.dp, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 1.h,
                      ),
                      Card(
                        color: Colors.white,
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child:  ListTile(
                          leading: Icon(
                            Icons.privacy_tip_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: .25.dp, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Card(
                        color: Colors.white,
                        margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child:  ListTile(
                          leading: Icon(
                            Icons.add_reaction_sharp,
                            color: Colors.black54,
                          ),
                          title: Text(
                            'Invite a Friend',
                            style: TextStyle(
                                fontSize: .25.dp, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: 1.h,
                      ),
                      InkWell(
                        onTap: (){
                          FirebaseAuth.instance.signOut();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        },
                        child: Card(
                          color: Colors.white,
                          margin:
                          const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child:  ListTile(
                            leading: Icon(
                              Icons.logout,
                              color: Colors.black54,
                            ),
                            title: Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: .25.dp, fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                          ),
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

