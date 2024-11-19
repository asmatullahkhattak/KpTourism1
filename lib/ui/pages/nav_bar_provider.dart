//
// import 'package:flutter/material.dart';
// import 'package:kptourism/models/nearby_places.dart';
// import 'package:kptourism/ui/pages/tourist_details_page.dart';
// import 'package:kptourism/widgets/distance.dart';
//
//
// class NearbyPlaces extends StatelessWidget {
//   const NearbyPlaces({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: List.generate(nearbyPlaces.length, (index) {
//           return Padding(
//             padding: const EdgeInsets.only(bottom: 10),
//             child: SizedBox(
//               height: 135,
//               width: double.maxFinite,
//               child: Card(
//                 elevation: 0.4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(12),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => TouristDetailsPage(
//                             image: nearbyPlaces[index].image,
//                           ),
//                         )
//                     );
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(12),
//                           child: Image.asset(
//                             nearbyPlaces[index].image,
//                             height: double.maxFinite,
//                             width: 130,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 "Swat",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               const Text("Family Package"),
//                               const SizedBox(height: 10),
//                               // DISTANCE WIDGET
//                               const Distance(),
//                               const Spacer(),
//                               Row(
//                                 children: [
//                                   Icon(
//                                     Icons.star,
//                                     color: Colors.yellow.shade700,
//                                     size: 14,
//                                   ),
//                                   const Text(
//                                     "4.5",
//                                     style: TextStyle(
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                   const Spacer(),
//                                   RichText(
//                                     text: TextSpan(
//                                         style: TextStyle(
//                                           fontSize: 13,
//                                           color: Theme.of(context).primaryColor,
//                                         ),
//                                         text: "\Pkr 15000",
//                                         children: const [
//                                           TextSpan(
//                                               style: TextStyle(
//                                                 fontSize: 12,
//                                                 color: Colors.black54,
//                                               ),
//                                               text: "/ Person")
//                                         ]),
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
