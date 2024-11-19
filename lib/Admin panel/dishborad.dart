
import 'package:flutter/material.dart';
import 'package:kptourism/Admin%20panel/Booking/user_booking.dart';
import 'package:kptourism/Admin%20panel/Packages/tour_packae.dart';
import 'package:kptourism/Admin%20panel/User%20data/user_Enter.dart';

import 'package:kptourism/Admin%20panel/tour_package/tour_package.dart';



class Dishborad extends StatefulWidget {
  const Dishborad({super.key});

  @override
  State<Dishborad> createState() => _DishboradState();
}

class _DishboradState extends State<Dishborad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Admin Dishborad"),
         centerTitle: true,
         backgroundColor: Colors.cyanAccent,
       ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
                child: Column(
                  children: [
                    ClipRRect(child: Image(image: AssetImage("assets/places/img27.jpg", ),
                      height:88,
                        width: 200,
                    ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    Text("\nadmin"),
                  ],
                )
            ),
            Column(
              children: [
                GestureDetector(
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> UserEnter()));
                    },
                    title: Text("User Login"),
                    leading: Icon(Icons.account_box),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> UserBooking()));
                  },
                  child: ListTile(
                    title: Text("User Booking"),
                    leading: Icon(Icons.card_travel),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TourPackage()));
                  },
                  child: ListTile(
                    title: Text("Tour Packages"),
                    leading: Icon(Icons.card_travel),
                  ),
                ),

              ],
            )
          ],
        ),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TourPackae()));
                    },
                    child: ListTile(
                      title: Text("Recommended by Package"),
                      leading: Icon(Icons.card_travel),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> UserEnter()));
                      },
                      title: Center(child: Text("User Login")),
                      leading: Icon(Icons.account_box),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> UserBooking()));
                    },
                    child: ListTile(
                      title: Center(child: Text("User Booking")),
                      leading: Icon(Icons.card_travel),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> TourPackage()));
                    },
                    child: ListTile(
                      title: Center(child: Text("Near by Package")),
                      leading: Icon(Icons.card_travel),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );

  }
}
