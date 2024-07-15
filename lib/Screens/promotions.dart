import 'package:flutter/material.dart';

import '../Model/imageModel.dart';

class Promotions extends StatelessWidget {
   const Promotions({super.key});


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: ListView.builder(
            itemCount: imageList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              final images = imageList[index];
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(1, 2),blurRadius: 5)]
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          images.image,
                          fit: BoxFit.fill,
                        )
                    ),
                    ListTile(
                      title: Text(images.title,style: const TextStyle(color: Colors.green),),
                      subtitle: Text(images.subtitle,style: const TextStyle(fontSize: 12)),
                      trailing: Text(images.trailing,style: const TextStyle(color: Colors.green,),),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
