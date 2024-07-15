import 'package:easypaisa/Components/my_drawer.dart';
import 'package:flutter/material.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyDrawer()));
      },
      child: const  Padding(
        padding: EdgeInsets.all(8),
        child: Stack(
          children: [
            Positioned.fill(
              child: CircleAvatar(
                radius: 0.3,
                backgroundImage: AssetImage('assets/images/namar.jpg',),
              ),
            ),
            Positioned.fill(
                top: 25,
                left: 29,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/menu1.png',),
                )
            ),
            Positioned.fill(
                top: 12,
                left: 35,
                child: Icon(Icons.circle ,color: Colors.red,size: 7,)),
          ],
        ),
      ),
    );
  }
}
