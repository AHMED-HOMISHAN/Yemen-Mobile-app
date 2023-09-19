// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yemenmobile/Components/components.dart';
import 'package:yemenmobile/Components/const.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yemenmobile/Screens/Offers/MainOffers.dart';
import 'package:yemenmobile/Screens/Offers/SecondaryOffers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldState = GlobalKey<ScaffoldState>();
    List mainPackages = [
      ['باقات سوبر فورجي', 'packageSuper4G.svg'],
      ['باقات فورجي الاساسية', 'package4G.svg'],
      ['باقات ثرجي الاساسية', 'package3G.svg'],
    ];

    List internetPackages = [
      ['باقات نت فورجي ', 'package4G.svg'],
      ['باقات نت ثرجي ', 'package3G.svg'],
    ];

    List services = [
      [' الخدمات الاساسية  ', 'ic_added_services.svg'],
      [' الخدمات المضافة  ', 'services.svg'],
      ['  خدمات الاعمال ', 'ic_business_services.svg'],
      [' الخدمات الصوتية  ', 'ic_ringtones_service.svg'],
    ];

    return Scaffold(
      key: scaffoldState,
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: 150,
              color: primaryColor,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/mainScreenBarBackground.svg',
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        smallHorizantalSpace,
                        const Text(
                          'أهلا أحمد سمير عبدالله حميشان',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              decoration: TextDecoration.none),
                        ),
                        Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.white)),
                              child: const Text(
                                'دفع مسبق',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              '777777777',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                        smallHorizantalSpace,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      height: MediaQuery.of(context).size.height * 0.63,
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        mainAxisSpacing: 15.0,
                        crossAxisSpacing: 15.0,
                        children: [
                          defualtCard(
                              title: 'العروض',
                              icon: 'assets/icons/offers.svg',
                              onPressed: () {
                                pushTo(
                                    context: context,
                                    screen: const MainOffersScreen());
                              }),
                          defualtCard(
                              title: 'الباقات',
                              icon: 'assets/icons/ic_package_service.svg',
                              onPressed: () {
                                scaffoldState.currentState!.showBottomSheet(
                                    elevation: 0.0,
                                    backgroundColor:
                                        const Color.fromARGB(0, 255, 255, 255),
                                    (context) => Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              child: Center(
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  width: 70,
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              color: Colors.grey[200],
                                              child: ListView.separated(
                                                  shrinkWrap: true,
                                                  itemBuilder: (context,
                                                          index) =>
                                                      contactUsCard(
                                                          title: mainPackages[
                                                              index][0],
                                                          iconSVG: mainPackages[
                                                              index][1]),
                                                  separatorBuilder:
                                                      (context, index) =>
                                                          smallVerticalSpace,
                                                  itemCount:
                                                      mainPackages.length),
                                            )
                                          ],
                                        ));
                              }),
                          defualtCard(
                              title: 'باقات الانترنت',
                              icon:
                                  'assets/icons/ic_internet_packages_service.svg',
                              onPressed: () {
                                scaffoldState.currentState!.showBottomSheet(
                                    elevation: 0.0,
                                    backgroundColor:
                                        const Color.fromARGB(0, 255, 255, 255),
                                    (context) => Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              child: Center(
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  width: 70,
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              color: Colors.grey[200],
                                              child: ListView.separated(
                                                  shrinkWrap: true,
                                                  itemBuilder: (context,
                                                          index) =>
                                                      contactUsCard(
                                                          title:
                                                              internetPackages[
                                                                  index][0],
                                                          iconSVG:
                                                              internetPackages[
                                                                  index][1]),
                                                  separatorBuilder:
                                                      (context, index) =>
                                                          smallVerticalSpace,
                                                  itemCount:
                                                      internetPackages.length),
                                            )
                                          ],
                                        ));
                              }),
                          defualtCard(
                              title: 'رنات',
                              icon: 'assets/icons/ic_ringtones_service.svg',
                              onPressed: () {}),
                          defualtCard(
                              title: 'الخدمات',
                              icon: 'assets/icons/ic_services_service.svg',
                              onPressed: () {
                                scaffoldState.currentState!.showBottomSheet(
                                    elevation: 0.0,
                                    backgroundColor:
                                        const Color.fromARGB(0, 255, 255, 255),
                                    (context) => Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              child: Center(
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(20),
                                                  width: 70,
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50)),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              color: Colors.grey[200],
                                              child: ListView.separated(
                                                  shrinkWrap: true,
                                                  itemBuilder: (context,
                                                          index) =>
                                                      mainServicesCard(
                                                          title: services[index]
                                                              [0],
                                                          iconSVG:
                                                              services[index]
                                                                  [1],
                                                          context: context,
                                                          page: const SecondaryOffersScreen(
                                                              title:
                                                                  'الخدمات الاساسية')),
                                                  separatorBuilder:
                                                      (context, index) =>
                                                          smallVerticalSpace,
                                                  itemCount: services.length),
                                            )
                                          ],
                                        ));
                              }),
                          defualtCard(
                              title: 'ريال موبايل',
                              icon: 'assets/icons/ic_riyal_mobile_service.svg',
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 5),
                        width: double.infinity,
                        child: CarouselSlider(
                            items: [
                              sliderCard('assets/images/ad1.png'),
                              sliderCard('assets/images/ad2.png'),
                              sliderCard('assets/images/ad3.png'),
                            ],
                            options: CarouselOptions(
                                viewportFraction: 0.7,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                                autoPlayCurve: Curves.fastOutSlowIn)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 120,
          left: 30,
          right: 30,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(7)),
            height: 95,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              const Text(
                'الرصيد الحالي',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    decoration: TextDecoration.none),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 215, 172),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'معلومات الرصيد',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const Text(
                    'ريال 0 ',
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        decoration: TextDecoration.none),
                  ),
                ],
              )
            ]),
          ),
        ),
      ]),
    );
  }
}
