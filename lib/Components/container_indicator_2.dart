import 'package:easypaisa/Model/model2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class IndicatorContainer2 extends StatefulWidget {
  const IndicatorContainer2({super.key});

  @override
  State<IndicatorContainer2> createState() => _IndicatorContainer2State();
}

class _IndicatorContainer2State extends State<IndicatorContainer2> {
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
      margin: const EdgeInsets.all(15),
      // height: MediaQuery.of(context).size.height*0.23,
      // width: MediaQuery.of(context).size.width*0.9,
      height: 185.sp,
      width: 320.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: 3,
            itemBuilder: (BuildContext context, int page) {
              int itemCountOnPage = (modelList2.length / 3).ceil();

              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: itemCountOnPage,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, mainAxisSpacing: 7, crossAxisSpacing: 7),
                itemBuilder: (BuildContext context, int index) {
                  final dataIndex = (page * itemCountOnPage) + index;
                  if (dataIndex < modelList2.length) {
                    final model = modelList2[dataIndex];
                    return Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                 BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 4,
                                    offset: const Offset(1, 3))
                              ]),
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          height: 36.sp,
                          width: 47.sp,
                          child: Center(
                            child: Image.asset(
                              model.image,
                            ),
                          ),
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
              children: List.generate(3, (index) {
                return Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == _currentPage
                        ? Colors.blue
                        : Colors.grey.shade300,
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
