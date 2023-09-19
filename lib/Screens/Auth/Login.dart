// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:yemenmobile/Components/components.dart';
import 'package:yemenmobile/Components/const.dart';
import 'package:yemenmobile/Screens/Pages/homeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  initState() {
    super.initState();

    setState(() {
      phoneController.text = "777777777";
      passwordController.text = "12345";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background.png',
                ),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/ymLogo.png',
                    width: 50,
                  ),
                  smallVerticalSpace,
                  const Text(
                    'أهلا وسهلا',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const Text(' في تطبيق يمن موبايل '),
                  largVerticalSpace,
                  defaultForm(
                      validate: true,
                      controller: phoneController,
                      type: TextInputType.phone,
                      prefixIcon: IconlyBroken.call,
                      label: 'رقم الهاتف',
                      suffixIconPressed: () {}),
                  smallVerticalSpace,
                  defaultForm(
                      validate: true,
                      controller: passwordController,
                      isPassword: isPassword,
                      type: TextInputType.number,
                      prefixIcon: IconlyBroken.password,
                      sufixIcon:
                          isPassword ? IconlyBroken.show : IconlyBroken.hide,
                      label: ' كلمة السر ',
                      suffixIconPressed: () {
                        setState(() {
                          isPassword = !isPassword;
                        });
                      }),
                  smallVerticalSpace,
                  TextButton(
                    child: const Text('لا أتذكر كلمة السر'),
                    onPressed: () {},
                  ),
                  smallVerticalSpace,
                  defaultButton(
                      width: double.infinity,
                      function: () {
                        if (phoneController.text == "777777777" &&
                            passwordController.text == "12345") {
                          pushReplacementTo(
                              context: context, screen: const HomeScreen());
                        }
                      },
                      label: 'تسجيل الدخول'),
                  smallVerticalSpace,
                  defaultButton(
                      width: double.infinity,
                      textColor: primaryColor,
                      buttonColor: Colors.white,
                      function: () {},
                      label: ' إنشاء حساب جديد '),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
