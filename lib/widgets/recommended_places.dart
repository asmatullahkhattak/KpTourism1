//
// import 'package:flutter/material.dart';
// import 'package:ionicons/ionicons.dart';
// import 'package:kptourism/main.dart';
// import 'package:kptourism/models/recommended_places.dart';
// import 'package:kptourism/ui/pages/tourist_details_page.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
//
// class RecommendedPlaces extends StatefulWidget {
//   const RecommendedPlaces({super.key});
//
//   @override
//   State<RecommendedPlaces> createState() => _RecommendedPlacesState();
// }
//
// class _RecommendedPlacesState extends State<RecommendedPlaces> {
//   final List<Map<String, dynamic>> gridMap = [
//     {
//       "Location": "swat",
//       "title": "Family Package",
//       "price": "\Pkr 15000 / Person",
//       "images": "assets/places/img31.jpg"
//     },
//     {
//       "Location": "kumrat",
//       "title": "Family Package",
//       "price": "\Pkr 15000 / Person",
//       "images": "assets/places/img32.jpg"
//     },
//     {
//       "Location": "muree",
//       "title": "Family Package",
//       "price": "\Pkr 15000 / Person",
//       "images": "assets/places/img33.jpg"
//     },
//     {
//       "Location": "swat",
//       "title": "Family Package",
//       "price": "\Pkr 15000 / Person",
//       "images": "assets/places/img34.jpg"
//     },
//     {
//       "Location": "swat",
//       "title": "Family Package",
//       "price": "\Pkr 15000 / Person",
//       "images": "assets/places/img35.jpg"
//     },
//     {
//       "Location": "swat",
//       "title": "Family Package",
//       "price": "\Pkr 15000 / Person",
//       "images": "assets/places/img36.jpg"
//     },
//     {
//       "Location": "swat",
//       "title": "Family Package",
//       "price": "\Pkr 15000 / Person",
//       "images": "assets/places/img37.jpg",
//     }
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 235,
//       child: ListView.separated(
//           physics: const BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return SizedBox(
//               width: 70.w,
//               child: Card(
//                 elevation: 0.4,
//                 shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(12),
//                   ),
//                 ),
//                 child: InkWell(
//                   borderRadius: BorderRadius.circular(12),
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => TouristDetailsPage(
//                             // image: recommendedPlaces[index].image,
//                             // text: recommendedPlaces[index].text,
//
//
//                           ),
//                         ));
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Column(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(12),
//                           child: Image.asset(
//                             recommendedPlaces[index].image,
//                             width: double.maxFinite,
//                             fit: BoxFit.cover,
//                             height: 20.h,
//                           ),
//                         ),
//                          SizedBox(height: 1.h),
//                         Row(
//                           children: [
//                             Text(
//                               "${gridMap.elementAt(index)['Location']}",
//                               style: Theme.of(context).textTheme.titleMedium!.merge(
//                                 const TextStyle(
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                             ),
//
//                             const Spacer(),
//                             Icon(
//                               Icons.star,
//                               color: Colors.yellow.shade700,
//                               size: 14,
//                             ),
//                             const Text(
//                               "4.4",
//                               style: TextStyle(
//                                 fontSize: 12,
//                               ),
//                             )
//                           ],
//                         ),
//                          SizedBox(height: 1.h),
//                         Row(
//                           children: [
//                             Icon(
//                               Ionicons.location,
//                               color: Theme.of(context).primaryColor,
//                               size: 16,
//                             ),
//                              SizedBox(width: 2.w),
//                              Text(
//                               "Pakistan",
//                               style: TextStyle(
//                                 fontSize: .2.dp,
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//           separatorBuilder: (context, index) => const Padding(
//             padding: EdgeInsets.only(right: 10),
//           ),
//           itemCount: recommendedPlaces.length),
//     );
//   }
// }
