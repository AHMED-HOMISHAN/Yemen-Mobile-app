import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yemenmobile/Components/components.dart';
import 'package:yemenmobile/Components/const.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    List items = [
      ['تغيير كلمة السر', 'password.svg'],
      ['رقم هاتفي الثابت', 'homephone.png'],
      ['سياسية الاستخدام', 'aboutApp.svg'],
      ['مشاركة التطبيق', 'shareApp.svg'],
      ['نسخة التطبيق', 'appVersion.svg'],
      ['خروج', 'logout.png'],
      ['تعطيل الحساب', 'deleteAccount.svg'],
    ];
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  color: primaryColor,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: SvgPicture.asset(
                    'assets/images/mainScreenBarBackground.svg',
                    fit: BoxFit.cover,
                  )),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                width: double.infinity,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colors.white)),
                        child: const Text(
                          'دفع مسبق',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'أحمد سمير حميشان',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '777777777',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      smallHorizantalSpace,
                    ],
                  ),
                  CircleAvatar(
                      maxRadius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/icons/ic_person_colored.svg',
                          width: 50,
                        ),
                      )),
                ]),
              ),
            ],
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10))),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.9,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15),
              child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  itemBuilder: (contex, index) => contactUsCard(
                      title: items[index][0], iconSVG: items[index][1]),
                  separatorBuilder: (contex, index) => smallVerticalSpace,
                  itemCount: items.length))
        ],
      ),
    );
  }
}
