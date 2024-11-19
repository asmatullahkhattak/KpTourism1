import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kptourism/Admin%20panel/tour_package/auth_controller.dart';
import 'package:kptourism/main.dart';
import 'package:kptourism/models/nearby_places.dart';
import 'package:kptourism/ui/pages/tourist_details_page.dart';
import 'package:kptourism/widgets/distance.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NearbyPlaces extends StatefulWidget {
  const NearbyPlaces({super.key});

  @override
  State<NearbyPlaces> createState() => _NearbyPlacesState();
}

class _NearbyPlacesState extends State<NearbyPlaces> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "Location": "swat",
      "title": "Family Package",
      "price": "\Pkr 15000 / Person",
      "images": "assets/places/img31.jpg"
    },
    {
      "Location": "kumrat",
      "title": "Family Package",
      "price": "\Pkr 15000 / Person",
      "images": "assets/places/img32.jpg"
    },
    {
      "Location": "muree",
      "title": "Family Package",
      "price": "\Pkr 15000 / Person",
      "images": "assets/places/img33.jpg"
    },
    {
      "Location": "swat",
      "title": "Family Package",
      "price": "\Pkr 15000 / Person",
      "images": "assets/places/img34.jpg"
    },
    {
      "Location": "swat",
      "title": "Family Package",
      "price": "\Pkr 15000 / Person",
      "images": "assets/places/img35.jpg"
    },
    {
      "Location": "swat",
      "title": "Family Package",
      "price": "\Pkr 15000 / Person",
      "images": "assets/places/img36.jpg"
    },
    {
      "Location": "swat",
      "title": "Family Package",
      "price": "\Pkr 15000 / Person",
      "images": "assets/places/img37.jpg",
    }
  ];

  final auth = FirebaseFirestore.instance;
  MainController controller = Get.put(MainController());
  final fireStore =
  FirebaseFirestore.instance.collection("Tour Packages").snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: fireStore,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
          if (snapshot.connectionState == ConnectionState.active){
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}'); // Handle errors
            }

            if (snapshot.hasData){
              final documents = snapshot.data!.docs;
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 30.0,
                      mainAxisExtent: 250,
                    ),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(

                                builder: (context) => TouristDetailsPage(
                                  imageUrl: snapshot.data!.docs[index]['tour_image'],
                                  title: snapshot.data!.docs[index]["package_name"],
                                  description:  snapshot.data!.docs[index]['description_name'],
                                    location: snapshot.data!.docs[index]["package_location"],
                                  // image: nearbyPlaces[index].image,
                                  //  text: nearbyPlaces[index].text,
                                ),
                              )
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              16.0,
                            ),
                            color: Colors.cyan[50],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0),
                                ),
                                child: Image(image: NetworkImage(
                                    "${snapshot.data!.docs[index]["tour_image"]}"),
                                  height: 17.h,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                   "${snapshot.data!.docs[index]["package_name"]}",
                                      style: Theme.of(context).textTheme.titleMedium!.merge(
                                        const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Text(
                                        "${snapshot.data!.docs[index]["package_location"]}",
                                        style: Theme.of(context).textTheme.titleMedium!.merge(
                                          const TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),


                                    SizedBox(
                                      height: 1.h,
                                    ),

                                    Row(
                                      children: [

                                        Text(
                                          "${snapshot.data!.docs[index]["rating_name"]}",
                                          // style: TextStyle(
                                          //   fontSize: .06.dp,
                                          // ),
                                        ),
                                        SizedBox(width: 3,),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow.shade700,
                                          size: 14,
                                        ),

                                        const Spacer(),

                                      ],

                                    ),
                                    Row(
                                      children: [
                                        Text("Price"),
                                        SizedBox(width: 170,),
                                        Text(
                                          "${snapshot.data!.docs[index]["package_price"]}",
                                          style: Theme.of(context).textTheme.titleSmall!.merge(
                                            TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.grey.shade500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                    // Row(
                                    //   children: [
                                    //     IconButton(
                                    //       onPressed: () {},
                                    //       icon: Icon(
                                    //         CupertinoIcons.heart,
                                    //       ),
                                    //     ),
                                    //     IconButton(
                                    //       onPressed: () {},
                                    //       icon: Icon(
                                    //         CupertinoIcons.cart,
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              );
            }
          }
          return const Center(
              child: CircularProgressIndicator());

        }

    );
  }
}
