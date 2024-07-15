import 'package:easypaisa/Components/appbar_leading.dart';
import 'package:easypaisa/Components/cards.dart';
import 'package:easypaisa/Components/container_indicator.dart';
import 'package:easypaisa/Components/container_indicator_2.dart';
import 'package:easypaisa/Components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Components/white_containerr.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //List for images
  List imageList = [
    'assets/images/11.webp',
    'assets/images/22.jpeg',
    'assets/images/33.jpeg',
    'assets/images/44.jpeg',
    'assets/images/55.jpeg',
    'assets/images/66.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        // bottomNavigationBar:  BottomNavBar(),
        appBar: AppBar(
          title: const Text(
            'easypaisa',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 4,
          shadowColor: Colors.grey,
          leading: const LeadingIcon(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: w * 0.03,
                  ),
                  const Icon(
                    Icons.notifications_none_sharp,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              //White Container (Logo, Name, Number, Sigh in Button)
              Container(
                width: w,
                decoration: const BoxDecoration(color: Colors.green),
                child: const WhiteContainer(),
              ),

              //Three Buttons (Send Money, Bill Payments, Mobile Packages)
              SizedBox(
                height: h * 0.03,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    rowData('Send Money', 'assets/images/money.png'),
                    rowData('Bill Payment', 'assets/images/bill.png'),
                    rowData('Mobile Packages', 'assets/images/phone.png'),
                  ],
                ),
              ),

              SizedBox(
                height: h * 0.04,
              ),
              TextWidget(text: 'More with easypaisa'),

              //GridView Container for Buttons and Indicators
              const IndicatorContainer1(),

              SizedBox(
                height: h * 0.02,
              ),
              TextWidget(text: 'Get your easypaisa Debit Card'),

              //Containers for Cards(Online Card, Plastic Card)
              SizedBox(
                height: h * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Cards(
                    title: 'Online Card',
                    subtitle: 'Only for Online \nPayment in Pakistan',
                    color: Colors.teal.shade700,
                    icon: 'assets/images/chip.png',
                    showIcon: false,
                  ),
                  Cards(
                    title: 'Plastic Card',
                    subtitle: 'Use at any ATM or\nShop in Pakistan',
                    color: Colors.black,
                    icon: 'assets/images/chip.png',
                  ),
                ],
              ),

              SizedBox(
                height: h * 0.03,
              ),
              TextWidget(text: 'Promotions'),

              //LIstView Container for Images
              SizedBox(
                height: h * 0.01,
              ),
              SizedBox(
                // height: h * 0.25,
                height: 160.sp,
                child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: SizedBox(
                            width: w * 0.9,
                            child: Image.asset(
                              imageList[index],
                              fit: BoxFit.fill,
                            )),
                      );
                    }),
              ),

              const SizedBox(
                height: 20,
              ),
              TextWidget(text: 'Discover MiniApps on Easypaisa'),

              //GridView Container with BUttons and Indicators
              const IndicatorContainer2(),

              //Container for Help & Support Customer
              Container(
                margin: const EdgeInsets.all(10),
                height: h * 0.19,
                width: w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Image.asset('assets/images/help.png'),
                      title: const Text(
                        'Help & Customer Support',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text(
                          'Register a complaint or get quick help on queries related to easypaisa'),
                    ),
                    const SizedBox(height: 5,),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get Help',
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_forward_sharp,
                            size: 15,
                            color: Colors.green,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget rowData(String name, String image) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 90.sp,
      width: 100.sp,
      // height: MediaQuery.of(context).size.height*0.12,
      // width: MediaQuery.of(context).size.width*0.29,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(1, 3))
          ]),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              // height: MediaQuery.of(context).size.height*0.05,
              height: 34.sp,
            ),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
