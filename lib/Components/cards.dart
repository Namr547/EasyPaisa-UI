import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cards extends StatelessWidget {
  String title;
  String subtitle;
  String icon;
  dynamic color;
  bool showIcon;
   Cards({super.key, required this.title, required this.subtitle, this.icon='',required this.color, this.showIcon = true,});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    return Container(
      padding: const EdgeInsets.all(10),
      // height: h*0.2,
      // width: w*0.44,
      height: 150.sp,
      width: 170.sp,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(17),

      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      title,
                      textScaleFactor: 1.2,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                     Text(
                      subtitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.yellow),
                    ),

                  ],
                ),
                if (showIcon) Image.asset(icon, height: 25.sp),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green.shade500),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Manage Card ',
                        style: TextStyle(color: Colors.white,fontSize: 12),
                      ),
                      Image.asset('assets/images/arrow.png',width: 15,)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}