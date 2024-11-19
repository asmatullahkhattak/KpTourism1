import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:flutter/material.dart';
import 'package:kptourism/ui/pages/home_page.dart';
import 'package:kptourism/widgets/gallery.dart';

import 'package:kptourism/widgets/nearby_places.dart';
import 'package:kptourism/widgets/user_proflie.dart';

class bottom_nav_bar extends StatefulWidget {
  const bottom_nav_bar({super.key});

  @override
  State<bottom_nav_bar> createState() => _bottom_nav_barState();
}

class _bottom_nav_barState extends State<bottom_nav_bar> {
  List<Widget> Screens=[


   const HomePage(),
    const NearbyPlaces(),
    const Gallery(),
    const Userprofile(),

  ];

  int selectedstate=0;

  List<TabItem> items = [
    const TabItem(
      icon: Icons.home,
      title: 'Home',
    ),
    const TabItem(
      icon: Icons.favorite_border,
      title: 'packages',
    ),
    const TabItem(
      icon: Icons.browse_gallery_outlined,
      title: 'Gallery',
    ),
    const TabItem(
      icon: Icons.account_box,
      title: 'User Profile',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[selectedstate],
      bottomNavigationBar: BottomBarInspiredOutside(
        items: items,
        backgroundColor:  Colors.white,
        color: Colors.black,
        colorSelected: Colors.white,
        indexSelected: selectedstate,
        onTap: (index) => setState(() {
          selectedstate = index;
        }),
        chipStyle:const ChipStyle(color: Colors.red,background: Colors.greenAccent,convexBridge: false
          ,notchSmoothness: NotchSmoothness.sharpEdge,),
        itemStyle: ItemStyle.circle,isAnimated: true,
        animated: true,
      ),
    );
  }
}

