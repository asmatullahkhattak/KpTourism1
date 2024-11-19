
import 'package:flutter/material.dart';

import 'package:ionicons/ionicons.dart';

import 'package:kptourism/widgets/boking.dart';
import 'package:kptourism/widgets/distance.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TouristDetailsPage extends StatefulWidget {
  String imageUrl;
  String title;
  String description;
  String location;

   TouristDetailsPage({
     required this.imageUrl,
     required this.title,
     required this.description,
     required this.location,

     super.key});

  @override
  State<TouristDetailsPage> createState() => _TouristDetailsPageState();
}

class _TouristDetailsPageState extends State<TouristDetailsPage> {
  //final auth = FirebaseFirestore.instance;
  // MainController controller = Get.put(MainController());
  // final fireStore =
  //     FirebaseFirestore.instance.collection("Tour Packages").snapshots();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        // Replace ListView with Column

        children: [
          SizedBox(
            height: size.height * 0.38,
            width: double.maxFinite,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                    image: DecorationImage(
                      image: NetworkImage(
                          widget.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: const BorderRadius.horizontal(
                          right: Radius.circular(15)),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          iconSize: 20,
                          icon: const Icon(Ionicons.chevron_back),
                        ),
                        IconButton(
                          iconSize: 20,
                          onPressed: () {},
                          icon: const Icon(Ionicons.heart_outline),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 1.3.h),
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        widget.title
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      widget.location,
                      style: TextStyle(fontWeight: FontWeight.bold) ,
                    ),
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: IconButton(
                  onPressed: () {},
                  iconSize: 20,
                  icon: const Icon(Ionicons.chatbubble_ellipses_outline),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "4.6",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Icon(
                    Ionicons.star,
                    color: Colors.yellow[800],
                    size: 15,
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Four Days Packages",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.5.h),

                ],
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 28.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),

              ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text(
                        widget.description
                    ),
                  ),
                ),

              // child: const Text("Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
              // " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
              // "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
              // " trekking opportunities, and a chance to experience the local culture and hospitality"),
            ),
          ),

          SizedBox(height: 2.h),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Booking()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                child: Center(child: const Text("Booking")),
              ),
            ),
          )
        ],
      ),
      // body: SafeArea(
      //   child: StreamBuilder<QuerySnapshot>(
      //       stream: fireStore,
      //       builder:
      //           (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      //         if (snapshot.connectionState == ConnectionState.active) {
      //           if (snapshot.hasError) {
      //             return Text('Error: ${snapshot.error}');
      //             // Handle errors
      //           }
      //           if (snapshot.hasData) {
      //             final documents = snapshot.data!.docs;
      //             return ListView.builder(
      //                 itemCount: 6,
      //                 itemBuilder: (BuildContext context, int index) {
      //                   return Column(
      //                     // Replace ListView with Column
      //
      //                     children: [
      //                       SizedBox(
      //                         height: size.height * 0.38,
      //                         width: double.maxFinite,
      //                         child: Stack(
      //                           fit: StackFit.expand,
      //                           children: [
      //                             Container(
      //                               decoration: BoxDecoration(
      //                                 borderRadius: const BorderRadius.vertical(
      //                                     bottom: Radius.circular(20)),
      //                                 image: DecorationImage(
      //                                   image: NetworkImage(
      //                                       "${snapshot.data!.docs[index]["tour_image"]}"),
      //                                   fit: BoxFit.cover,
      //                                 ),
      //                                 boxShadow: [
      //                                   BoxShadow(
      //                                     color: Colors.black.withOpacity(0.4),
      //                                     spreadRadius: 0,
      //                                     blurRadius: 20,
      //                                     offset: const Offset(0, 10),
      //                                   ),
      //                                 ],
      //                               ),
      //                             ),
      //                             Positioned(
      //                               top: 10,
      //                               left: 0,
      //                               child: Container(
      //                                 decoration: BoxDecoration(
      //                                   color: Colors.white.withOpacity(0.7),
      //                                   borderRadius: const BorderRadius.horizontal(
      //                                       right: Radius.circular(15)),
      //                                 ),
      //                                 child: Row(
      //                                   children: [
      //                                     IconButton(
      //                                       onPressed: () {
      //                                         Navigator.pop(context);
      //                                       },
      //                                       iconSize: 20,
      //                                       icon: const Icon(Ionicons.chevron_back),
      //                                     ),
      //                                     IconButton(
      //                                       iconSize: 20,
      //                                       onPressed: () {},
      //                                       icon: const Icon(Ionicons.heart_outline),
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             )
      //                           ],
      //                         ),
      //                       ),
      //                       SizedBox(height: 2.h),
      //                       Row(
      //                         children: [
      //                           Column(
      //                             mainAxisSize: MainAxisSize.min,
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             children: [
      //                               Text(
      //                                 "Swat",
      //                                 style: Theme.of(context).textTheme.titleLarge,
      //                               ),
      //                               SizedBox(height: 1.5.h),
      //                               Text(
      //                                 "Kalam",
      //                                 style: Theme.of(context).textTheme.bodySmall,
      //                               )
      //                             ],
      //                           ),
      //                           const Spacer(),
      //                           Padding(
      //                             padding: const EdgeInsets.only(right: 4),
      //                             child: IconButton(
      //                               onPressed: () {},
      //                               iconSize: 20,
      //                               icon: const Icon(Ionicons.chatbubble_ellipses_outline),
      //                             ),
      //                           ),
      //                           Column(
      //                             mainAxisSize: MainAxisSize.min,
      //                             children: [
      //                               Text(
      //                                 "4.6",
      //                                 style: Theme.of(context).textTheme.bodySmall,
      //                               ),
      //                               Icon(
      //                                 Ionicons.star,
      //                                 color: Colors.yellow[800],
      //                                 size: 15,
      //                               )
      //                             ],
      //                           )
      //                         ],
      //                       ),
      //                       SizedBox(height: 1.h),
      //                       Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Column(
      //                             crossAxisAlignment: CrossAxisAlignment.start,
      //                             mainAxisSize: MainAxisSize.min,
      //                             children: [
      //                               Text(
      //                                 "Four Days Packages",
      //                                 style: Theme.of(context).textTheme.titleLarge!.copyWith(
      //                                   color: Theme.of(context).colorScheme.primary,
      //                                 ),
      //                               ),
      //                               SizedBox(height: 1.5.h),
      //
      //                             ],
      //                           ),
      //                         ],
      //                       ),
      //                       SizedBox(height: 1.5.h),
      //                       Container(
      //                         height: 22.h,
      //                         width: double.maxFinite,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(15),
      //                           color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
      //
      //                         ),
      //                         child: Text(
      //                             "${snapshot.data!.docs[index]["description_name"]}"
      //                         ),
      //
      //                         // child: const Text("Kumrat Valley is a breathtakingly beautiful destination in the Upper Dir district"
      //                         // " of Khyber Pakhtunkhwa, Pakistan, known for its lush green meadows, snow-capped mountains, "
      //                         // "and serene rivers. This picturesque valley is a popular tourist spot, offering stunning views,"
      //                         // " trekking opportunities, and a chance to experience the local culture and hospitality"),
      //                       ),
      //                       SizedBox(height: 1.h),
      //                       const Distance(),
      //                       SizedBox(height: 2.h),
      //                       ElevatedButton(
      //                         onPressed: () {
      //                           Navigator.push(context, MaterialPageRoute(builder: (_) => Booking()));
      //                         },
      //                         style: ElevatedButton.styleFrom(
      //                           elevation: 0,
      //                           shape: const StadiumBorder(),
      //                           padding: const EdgeInsets.symmetric(
      //                             vertical: 15,
      //                             horizontal: 8.0,
      //                           ),
      //                         ),
      //                         child: const Text("Booking"),
      //                       )
      //                     ],
      //                   );
      //                 });
      //           }
      //         }
      //         return const Center(child: CircularProgressIndicator());
      //       }),
      // ),
    );
  }
}
