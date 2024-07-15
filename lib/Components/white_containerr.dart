import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          width: w * 1,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: w * 0.4,
                ),
                SizedBox(
                  height: 10.sp,
                ),
                const Text(
                  'NAMR ULLAH',
                  style: TextStyle(fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '03489055547',
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        width: 80.sp,
                        height: h * 0.03.sp,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(color: Colors.white),
                            ))),
                  ],
                ),
                const Text('Sign in your easypaisa account',),
              ],
            ),
          )
        ),

        // Positioned.fill(
        //     top: 10,
        //     bottom: 110,
        //     left: 40,
        //     right: 250,
        //     child: Image.asset('assets/images/logo.png')),
        // const Positioned.fill(
        //     top: 90,
        //     bottom: 50,
        //     left: 40,
        //     right: 250,
        //     child: Text(
        //       'Namr Ullah',
        //       style: TextStyle(fontSize: 15),
        //     )),
        // const Positioned.fill(
        //     top: 115,
        //     bottom: 50,
        //     left: 40,
        //     right: 250,
        //     child: Text(
        //       '03489055547',
        //       style: TextStyle(
        //           fontSize: 18, fontWeight: FontWeight.bold),
        //     )),
        // const Positioned.fill(
        //     top: 145,
        //     left: 40,
        //     right: 100,
        //     child: Text(
        //       'Sign in to your easypaisa account',
        //       style: TextStyle(
        //         fontSize: 15,
        //       ),
        //     )),
        // Positioned.fill(
        //     top: 128,
        //     left: 294,
        //     right: 35,
        //     bottom: 55,
        //     child: Container(
        //       decoration: BoxDecoration(
        //           color: Colors.green,
        //           borderRadius: BorderRadius.circular(30)),
        //       child: const Center(
        //         child: Text(
        //           'Sign In',
        //           style:
        //           TextStyle(fontSize: 12, color: Colors.white),
        //         ),
        //       ),
        //     ),
        //
        // ),
        //
      ],
    );
  }
}
