import 'package:easypaisa/Screens/main_screen.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ));
                },
                child: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Account Settings',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Account info, Settings & More',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'ACCOUNT',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
                ),
                const SizedBox(
                  height: 40,
                ),
                MyListTile(Icons.manage_accounts_rounded, 'Account Information'),
                MyListTile(Icons.pin, 'Change easypaisa Account PIN'),
                MyListTile(Icons.credit_card, 'Link Telenor Microsoft Bank'),
                MyListTile(Icons.add_card_outlined, 'Link Debit Card'),
                MyListTile(Icons.card_membership_rounded, 'Get Your Tax Certification'),
                MyListTile(Icons.switch_account_outlined, 'Open NewGen Account'),
                MyListTile(Icons.qr_code_scanner_sharp, 'Become An easypaisa Merchant'),

              ],
            ),
          )),
    );
  }
}

Widget MyListTile( listicon, String titletext,) {
  return ListTile(
    contentPadding: const EdgeInsets.only(left: -10,),
    iconColor: Colors.green,
    leading: Icon(
      listicon,
      size: 27,
    ),
    title: Text(
      titletext,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_sharp,
      color: Colors.grey.shade500,
      size: 20,
    ),
  );
}
