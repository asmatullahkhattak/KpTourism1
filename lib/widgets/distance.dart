import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kptourism/main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Distance extends StatelessWidget {
  const Distance({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Ionicons.locate_outline,
          color: Colors.black54,
          size: 14,
        ),
        const Text(
          "Swat",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
         SizedBox(width: 1.w),
        ...List.generate(
          18,
              (index) {
            return Expanded(
              child: Container(
                height: .2.h,
                color: index.isOdd ? Colors.transparent : Colors.black54,
              ),
            );
          },
        ),
         SizedBox(width: 2.w),
        Icon(
          Ionicons.location_outline,
          size: 14,
          color: Theme.of(context).primaryColor,
        ),
         SizedBox(width: 1.w),
        Text(
          "Kalam",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}