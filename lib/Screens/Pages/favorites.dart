import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yemenmobile/Components/components.dart';
import 'package:yemenmobile/Components/const.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, List<String>> fav = {
      'title': ['باقة اسبوعيه'],
      'totalMessages': ['رسالة 30'],
      'totalMinutes': ['دقيقة 100'],
      'totalMeiga': ['ميجا انترنت 100'],
      'totalDay': ['يوم 30'],
      'reminderMessages': [' رسالة 13 متبقية'],
      'reminderMinutes': ['دقيقة  0 متبقية'],
      'reminderMeiga': [' ميجا انترنت 13 متبقية'],
      'reminderDay': ['يوم  0 متبقية'],
      'price': ['500 ريال'],
    };

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: custumAppBar('المفضلة'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: fav.isEmpty == true
            ? SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/favEmpty.svg'),
                    const Text(
                      'المفضلة فارغة',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            : ListView.separated(
                itemBuilder: (context, index) => favoriteCard(
                    context: context,
                    title: fav.values.elementAt(0)[index],
                    totalMessages: fav.values.elementAt(1)[index],
                    totalMinutes: fav.values.elementAt(2)[index],
                    totalMeiga: fav.values.elementAt(3)[index],
                    totalDay: fav.values.elementAt(4)[index],
                    reminderMessages: fav.values.elementAt(5)[index],
                    reminderMinutes: fav.values.elementAt(6)[index],
                    reminderMeiga: fav.values.elementAt(7)[index],
                    reminderDay: fav.values.elementAt(8)[index],
                    price: fav.values.elementAt(9)[index]),
                separatorBuilder: (context, index) => smallVerticalSpace,
                itemCount: fav.values.elementAt(0).length),
      ),
    );
  }
}
