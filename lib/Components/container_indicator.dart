import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/model1.dart';

class IndicatorContainer1 extends StatefulWidget {
  const IndicatorContainer1({super.key});

  @override
  State<IndicatorContainer1> createState() => _IndicatorContainer1State();
}

class _IndicatorContainer1State extends State<IndicatorContainer1> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(18),
      // height: MediaQuery.of(context).size.height*0.32,
      // width: MediaQuery.of(context).size.width*0.9,
      height: 240.sp,
      width: 320.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: 2,
            itemBuilder: (BuildContext context, int page) {
              int itemCountOnPage = (modelList.length / 2).ceil();

              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: itemCountOnPage,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final dataIndex = (page * itemCountOnPage) + index;
                  if (dataIndex < modelList.length) {
                    final model = modelList[dataIndex];
                    return Column(
                      children: [
                        Image.asset(
                          model.image,
                          // height: 45,
                          // width: 35,
                          height: 40.sp,
                          width: 30.sp,
                        ),
                        Text(
                          model.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
                        )
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              );
            },
          ),

          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                return Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == _currentPage ? Colors.blue : Colors.grey.shade300,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
