// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:yemenmobile/Components/components.dart';
import 'package:yemenmobile/Components/const.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
      ['صفحتنا على الفيس بوك', 'contactFacebook.svg'],
      ['حسابنا على الينكد ان', 'linkedin.svg'],
      ['ارسال بريد الكتروني', 'contactEmail.svg'],
      ['اتصل بنا', 'contactPhone.svg'],
      ['مراكز الخدمة', 'ic_service_places.svg'],
      ['حسابنا على انستجرام', 'instagram.svg'],
      ['قناتنا على التيليجرام', 'telegram.svg'],
      ['قناتنا على اليوتيوب', 'youtube.svg'],

      //
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: custumAppBar('تواصل معنا'),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
              itemBuilder: (context, index) => contactUsCard(
                  title: items[index][0], iconSVG: items[index][1]),
              separatorBuilder: (context, index) => smallVerticalSpace,
              itemCount: items.length)),
    );
  }
}
