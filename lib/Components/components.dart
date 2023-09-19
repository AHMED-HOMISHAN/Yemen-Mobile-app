import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yemenmobile/Components/const.dart';

Widget defaultButton(
    {required double width,
    required Function() function,
    required String label,
    Color buttonColor = primaryColor,
    Color borderColor = primaryColor,
    Color textColor = Colors.white,
    double radius = 8.0}) {
  return Container(
      width: width,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(color: borderColor)),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          label,
          style: TextStyle(
              color: textColor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ));
}

// General Form

Widget defaultForm({
  required TextEditingController controller,
  required TextInputType type,
  required IconData prefixIcon,
  IconData? sufixIcon,
  bool validate = false,
  String validationMessage = 'This field is required',
  bool isPassword = false,
  required String label,
  required Function() suffixIconPressed,
  Function()? onSubmit,
}) {
  return TextFormField(
    controller: controller,
    obscureText: isPassword == true ? true : false,
    keyboardType: type,
    validator: validate == true
        ? (value) {
            if (value!.isEmpty) {
              return validationMessage;
            }
            if (isPassword == true && value.length < 9) {
              return 'The Password is too short';
            }
            if (isPassword == true && value.length > 9) {
              return 'The Password is too large';
            }
            return null;
          }
        : null,
    onTap: onSubmit,
    decoration: InputDecoration(
      prefixIcon: Icon(prefixIcon),
      suffixIcon: sufixIcon != null
          ? GestureDetector(
              onTap: suffixIconPressed,
              child: Icon(sufixIcon),
            )
          : null,
      labelText: label,
      border: const OutlineInputBorder(
          borderSide:
              BorderSide(style: BorderStyle.solid, color: primaryColor)),
    ),
  );
}

messanger(
    {required BuildContext context,
    required String message,
    bool status = true}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    behavior: SnackBarBehavior.floating,
    backgroundColor: status ? primaryColor : Colors.redAccent,
  ));
}

Future<dynamic> pushReplacementTo(
    {required BuildContext context, required screen}) {
  return Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => screen));
}

Future<dynamic> pushTo({required BuildContext context, required screen}) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => screen));
}

Widget defualtCard(
        {required String title,
        required String icon,
        required Function() onPressed}) =>
    GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(icon),
              smallVerticalSpace,
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    decoration: TextDecoration.none),
              )
            ]),
      ),
    );

Widget sliderCard(String image) => ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        image,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
    );

Widget favoriteCard({
  required BuildContext context,
  required String title,
  required String totalMessages,
  required String totalMinutes,
  required String totalMeiga,
  required String totalDay,
  required String reminderMessages,
  required String reminderMinutes,
  required String reminderMeiga,
  required String reminderDay,
  required String price,
}) =>
    Container(
        height: 210,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          smallVerticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              smallHorizantalSpace,
              Text(totalMessages,
                  style:
                      const TextStyle(decoration: TextDecoration.lineThrough)),
              const Icon(IconlyBroken.message),
              const Spacer(),
              Text(totalMinutes,
                  style:
                      const TextStyle(decoration: TextDecoration.lineThrough)),
              const Icon(IconlyBroken.call),
              smallHorizantalSpace,
            ],
          ),
          Row(
            children: [
              Text(reminderMessages,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const Spacer(),
              Text(reminderMinutes,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              largHorizantalSpace,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              smallHorizantalSpace,
              Text(totalDay,
                  style:
                      const TextStyle(decoration: TextDecoration.lineThrough)),
              SvgPicture.asset(
                  'assets/icons/ic_internet_packages_service2.svg'),
              const Spacer(),
              Text(totalMeiga,
                  style:
                      const TextStyle(decoration: TextDecoration.lineThrough)),
              SvgPicture.asset(
                  'assets/icons/ic_internet_packages_service2.svg'),
              smallHorizantalSpace,
            ],
          ),
          Row(
            children: [
              Text(reminderMeiga,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const Spacer(),
              Text(reminderDay,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              largHorizantalSpace,
            ],
          ),
          smallVerticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                price,
                style: const TextStyle(
                    color: primaryColor, fontWeight: FontWeight.bold),
              ),
              smallHorizantalSpace,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Center(
                  child: Text(
                    'اشترك',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ]));

AppBar custumAppBar(String title) => AppBar(
      flexibleSpace: const Image(
          image: AssetImage('assets/images/mainScreenBarBackground.png'),
          fit: BoxFit.cover),
      actions: [
        const Spacer(),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        smallHorizantalSpace
      ],
    );

Widget contactUsCard(
        {required String title, required String iconSVG, String? url}) =>
    GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(15),
          child: Row(children: [
            iconSVG == 'appVersion.svg'
                ? const Text('1.0.3')
                : const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.grey,
                  ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
            smallHorizantalSpace,
            iconSVG == 'homephone.png' || iconSVG == 'logout.png'
                ? Image.asset(
                    'assets/icons/$iconSVG',
                    width: 30,
                  )
                : SvgPicture.asset(
                    'assets/icons/$iconSVG',
                    width: 30,
                  ),
          ]),
        ));

Widget serviceCard({
  required String title,
  required String describition,
  required bool isActived,
  required bool isDisbladed,
  required BuildContext context,
}) =>
    Container(
        height: 210,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          smallVerticalSpace,
          Text(
            describition,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isActived
                  ? Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const Center(
                        child: Text(
                          'تفعيل',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : const SizedBox(),
              smallHorizantalSpace,
              isDisbladed
                  ? Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: primaryColor,
                          )),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: const Center(
                        child: Text(
                          'الغاء تفعيل',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          smallVerticalSpace,
        ]));

Widget mainServicesCard(
        {required String title,
        required String iconSVG,
        dynamic page,
        required BuildContext context}) =>
    GestureDetector(
        onTap: () {
          page != null ? pushTo(context: context, screen: page) : null;
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(15),
          child: Row(children: [
            iconSVG == 'appVersion.svg'
                ? const Text('1.0.3')
                : const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.grey,
                  ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
            smallHorizantalSpace,
            iconSVG == 'homephone.png' || iconSVG == 'logout.png'
                ? Image.asset(
                    'assets/icons/$iconSVG',
                    width: 30,
                  )
                : SvgPicture.asset(
                    'assets/icons/$iconSVG',
                    width: 30,
                  ),
          ]),
        ));
