// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:yemenmobile/Components/components.dart';
import 'package:yemenmobile/Components/const.dart';

class MainOffersScreen extends StatelessWidget {
  const MainOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custumAppBar('العروض'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            smallVerticalSpace,
            sliderCard('assets/images/ad1.png'),
            smallVerticalSpace,
            sliderCard('assets/images/ad2.png'),
            smallVerticalSpace,
            sliderCard('assets/images/ad3.png'),
            smallVerticalSpace,
          ]),
        ),
      ),
    );
  }
}
