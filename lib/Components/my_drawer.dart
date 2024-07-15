import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
            body: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SingleChildScrollView(
                  child: Column(
                      children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Account Settings',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SwitchButton(),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Profile, Settings & More',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Version V.2.9.43',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/images/namar.jpg',
                              ),
                              maxRadius: 45,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 40, bottom: 17),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NAMR ULLAH',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                                Text(
                                  '03489055547',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                                Text(
                                  'namrullah10@gmail.com',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, bottom: 60),
                            child: Container(
                              height: 21,
                              width: 55,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.mode_edit_outlined,
                                    size: 17,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    'Edit',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 12),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MyListTile(Icons.upgrade, 'Upgrade Account'),
                    MyListTile(
                        Icons.account_circle_outlined, 'Account level'),
                    MyListTile(Icons.settings, 'Account Settings'),
                    MyListTile(
                        Icons.history_toggle_off, 'Transaction History'),
                    MyListTile(Icons.supervisor_account_outlined,
                        'Open NewGen Account'),
                    MyListTile(Icons.wallet, 'My Wallet'),
                    MyListTile(Icons.cake_outlined, 'Goals and Rewards'),
                    MyListTile(Icons.cloud_done, 'My Approvals'),
                    MyListTile(Icons.star_outline_rounded, 'My Favourites'),
                    MyListTile(Icons.qr_code_scanner_sharp,
                        'Become an easypaisa Merchant'),
                    MyListTile(
                        Icons.card_membership_rounded, 'Tax Certificate'),
                        const SizedBox(height: 20,),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('HELP',style: TextStyle(fontSize: 20,color: Colors.grey.shade600),)),
                        const SizedBox(height: 10,),
                        MyListTile(Icons.headphones, 'Customer Support'),
                        MyListTile(Icons.messenger_outline, 'Free Details'),
                        MyListTile(Icons.help, 'Help & FAQs')
                  ]
                  ),
                )
            )
        )
    );
  }
}

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isEngSelected = true;
  bool isUrdSelected = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEngSelected = !isEngSelected;
          isUrdSelected = !isUrdSelected;
        });
      },
      child: Container(
        width: 90,
        height: 28,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 28,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: isEngSelected ? Colors.green : Colors.grey.shade300,
              ),
              child: Center(
                child: Text(
                  'Eng',
                  style: TextStyle(
                    color: isEngSelected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              height: 28,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: !isUrdSelected ? Colors.green : Colors.grey.shade300,
              ),
              child: Center(
                child: Text(
                  'Urdu',
                  style: TextStyle(
                    color: isUrdSelected ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget MyListTile(
  listicon,
  String titletext,
) {
  return ListTile(
    contentPadding: const EdgeInsets.only(
      left: -10,
    ),
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
