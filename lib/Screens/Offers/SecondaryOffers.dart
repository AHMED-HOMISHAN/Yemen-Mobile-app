// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:yemenmobile/Components/components.dart';
import 'package:yemenmobile/Components/const.dart';

class SecondaryOffersScreen extends StatefulWidget {
  final String title;
  const SecondaryOffersScreen({super.key, required this.title});

  @override
  State<SecondaryOffersScreen> createState() => _SecondaryOffersScreenState();
}

class _SecondaryOffersScreenState extends State<SecondaryOffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: custumAppBar(widget.title),
      body: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemBuilder: (context, index) => serviceCard(
              title: 'الخدمة $index',
              describition: 'وصف الخدمة $index',
              isActived: true,
              isDisbladed: true,
              context: context),
          separatorBuilder: (context, index) => smallVerticalSpace,
          itemCount: 4),
    );
  }
}
