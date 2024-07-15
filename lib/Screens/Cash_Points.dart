import 'package:flutter/material.dart';

class CashPoints extends StatelessWidget {
  const CashPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Cash Point',style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
