import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kptourism/Admin%20panel/tour_package/auth_controller.dart';
import 'package:kptourism/models/recommended_places.dart';
import 'package:kptourism/ui/pages/tourist_detail_page.dart';
import 'package:kptourism/ui/pages/tourist_details_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  final auth = FirebaseFirestore.instance;
  MainController controller = Get.put(MainController());
  final fireStore =
      FirebaseFirestore.instance.collection("Tour package ").snapshots();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: StreamBuilder<QuerySnapshot>(
          // Use QuerySnapshot for Firestore data
          stream: fireStore,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}'); // Handle errors
              }

              if (snapshot.hasData) {
                final documents = snapshot.data!.docs; // Get documents
                return ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                          width: 70.w,
                          child: Card(
                              elevation: 0.4,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: InkWell(
                                  borderRadius: BorderRadius.circular(12),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => TouristDetail(
                                            imageUrl: snapshot.data!.docs[index]['tour_image'],
                                            title: snapshot.data!.docs[index]["package_name"],
                                            description:  snapshot.data!.docs[index]['description_name'],
                                            location: snapshot.data!.docs[index]["package_location"],


                                          ),
                                        ));
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(children: [
                                        ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: Image(image: NetworkImage(
                                                "${snapshot.data!.docs[index]["tour_image"]}"),
                                              width: double.maxFinite,
                                              fit: BoxFit.cover,
                                              height: 20.h,

                                            ),
                                        ),
                                        SizedBox(height: 1.h),
                                        Row(
                                          children: [
                                            Text(
                                                "${snapshot.data!.docs[index]["package_name"]}"
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow.shade700,
                                              size: 14,
                                            ),
                                            const Text(
                                              "4.4",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 1.h),
                                        Row(
                                          children: [
                                            Icon(
                                              Ionicons.location,
                                              color: Theme.of(context).primaryColor,
                                              size: 16,
                                            ),
                                            SizedBox(width: 2.w),
                                            Text(
                                              "Pakistan",
                                              style: TextStyle(
                                                fontSize: .2.dp,
                                              ),
                                            )
                                          ],
                                        )
                                          ],
                                        ),


                                  )
                              )
                          )

                              );



                    },
                    separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                    itemCount:snapshot.data!.docs.length);
              }

              return const Text(
                  'No data found'); // Display message when no data
            }

            return const Center(
                child: CircularProgressIndicator()); // Loading indicator
          }
          ),
    );
  }
}
