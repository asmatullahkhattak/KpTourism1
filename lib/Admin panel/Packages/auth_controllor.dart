
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kptourism/Admin%20panel/Packages/common_dialog.dart';


import 'package:kptourism/ui/Signup_screen/signup.dart';

class MainnController extends GetxController{

  static var userId;





  Future<void> addNewProducct(Map productdata, File image) async {

    var pathimage = image.toString();
    var temp = pathimage.lastIndexOf('/');
    var result = pathimage.substring(temp + 1);
    print(result);
    final ref =
    FirebaseStorage.instance.ref().child('product_images').child(result);
    var response = await ref.putFile(image);
    print("Updated $response");
    var imageUrl = await ref.getDownloadURL();

    try {
      CommanDialog.showLoading();
      var response =await FirebaseFirestore.instance
          .collection('Tour package ')
          .add({
        'package_name': productdata['p_name'],
        'package_price': productdata['p_price'],
        'package_location': productdata['p_location'],
        "product_upload_date": productdata['p_upload_date'],
        'tour_image': imageUrl,
        "rating_name" : productdata["rate_name"],
        "description_name": productdata["des_name"],
        "tour_userId" : productdata["user_Id"],

      });
      print("Firebase response1111 $response");
      CommanDialog.hideLoading();
      Get.back();
    } catch (exception) {
      CommanDialog.hideLoading();
      print("Error Saving Data at firestore $exception");
    }
  }


}