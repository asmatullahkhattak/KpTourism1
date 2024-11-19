import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kptourism/Admin%20panel/Packages/auth_controllor.dart';
import 'package:kptourism/Admin%20panel/Packages/tour_imagepackir.dart';
import 'package:kptourism/Admin%20panel/tour_package/auth_controller.dart';


class TourPackae extends StatefulWidget {
  const TourPackae({super.key});

  @override
  State<TourPackae> createState() => _TourPackaeState();
}

class _TourPackaeState extends State<TourPackae> {
  var userId;
  MainnController controller = Get.put(MainnController());
  var _userImageFile;

  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> productData = {
    "p_name": "",
    "p_price": "",
    "p_location": "",
    'user_Id': "",
    "des_name": "",
    "rate_name": "",
    "p_upload_date": DateTime.now().millisecondsSinceEpoch,
    "phone_number": ""

  };

  void _pickedImage(File image) {
    _userImageFile = image;

    print("image got  $_userImageFile");


  }


  addProduct() {

    if (_userImageFile == null) {
      Get.snackbar(
        "Opps",
        "Image Required",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Theme
            .of(context)
            .colorScheme.error,
        colorText: Colors.white,
      );
      return;
    }
    _formKey.currentState!.save();
    if (_formKey.currentState!.validate()) {
      print("Form is vaid ");

      print('Data for login $productData');
      controller.addNewProducct(productData, _userImageFile);

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add New Tour Package'),
      ),
      body: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Tour Name',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tour Name Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['p_name'] = value!;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Location',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tour Location Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['p_location'] = value!;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Product Name Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['des_name'] = value!;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Rating',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Product Name Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['rate_name'] = value!;
                  },
                ),
                SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: ' Price',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' Price Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['p_price'] = value!;
                  },
                ),

                SizedBox(
                  height: 30,
                ),

                TourImagepackir(_pickedImage),

                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: addProduct,
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
