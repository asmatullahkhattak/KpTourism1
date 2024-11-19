
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:kptourism/widgets/custom_icon_button.dart';

import 'package:kptourism/widgets/location_card.dart';
import 'package:kptourism/widgets/nearby_places.dart';
import 'package:kptourism/widgets/recommendatin.dart';

import 'package:kptourism/widgets/tourist_places.dart';
import 'package:responsive_sizer/responsive_sizer.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("KP Tourism"),
            Text(
              "Kp Tourism",
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: [
            // LOCATION CARD
            const LocationCard(),
             SizedBox(
              height: 2.5.h,
            ),
            const TouristPlaces(),
            // CATEGORIES
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommendation",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(onPressed: () {}, child: const Text("View All"))
              ],
            ),
             SizedBox(height: 1.5.h),
            const Recommendation(),
             SizedBox(height: 1.5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearby From You",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(onPressed: () {}, child: const Text("View All"))
              ],
            ),
             SizedBox(height: 3.h),
            const NearbyPlaces(),


          ],

        ),
      ),


        // bottomNavigationBar: BottomBarInspiredOutside(
        // top: -20,
        // itemStyle: ItemStyle.circle,
        // indexSelected: select,
        // onTap: (index){
        //   setState(() {
        //     select = index;
        //   });
        // },
        // items: items,
        // backgroundColor: Colors.blue,
        // color: Colors.white,
        // colorSelected: Colors.black),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   // showSelectedLabels: false,
      //   // showUnselectedLabels: false,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Ionicons.home_outline),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Ionicons.bookmark_outline),
      //       label: "Bookmark",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Ionicons.ticket_outline),
      //       label: "Ticket",
      //
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Ionicons.person_outline),
      //       label: "Profile",
      //     )
      //   ],
      // ),
    );
  }
}
