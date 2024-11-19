
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            height: 20.h,
              width: 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage("assets/places/img27.jpg"))
              ),

          ),
          SizedBox(width: 20,
          ),
          Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(right: 2),
                child: Text(
                  "Your Location",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 1.3.h),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(

                  "pakistan, KPK",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
