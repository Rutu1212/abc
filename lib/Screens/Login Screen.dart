import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Screens/HomePage/Homepage.dart';
import 'package:untitled/appColors/app_colors.dart';
import 'package:untitled/svg%20image/svg_image.dart';

import '../Rout/Rout.dart';
import '../Styles/Login Screen stylies.dart';
import '../Widget/MyButtonWidget.dart';
import '../Widget/MyTextFromField.dart';
import 'Sign up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart({Function? onPress}) {
    return Column(
      children: [
        Image.asset("Photo/Logo.png", height: 150),
        Column(
          children: [
            MyTextFromField(hintText: 'E-mail', obscureText: false),
            MyTextFromField(hintText: 'Password', obscureText: true),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyButtonWidget(
                  onPress: () {
                    RoutingPage.gotoNextPage(context: context, navigateTo: HomePage(),);
                  },
                  color: AppColors.baseBlackColor,
                  text: 'Sign In',
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: MyButtonWidget(
                  onPress: () {
                    RoutingPage.gotoNextPage(context: context, navigateTo: SignupScreen(),);
                    // The argument type 'Function?' can't be assigned to the parameter type 'void Function()?'.
                  },
                  color: AppColors.baseDarkPinkColor,
                  text: 'Sign Up',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Forgot password?',
          style: LoginScreenStylies.forgotPasswordstylies,
        ),
      ],
    );
  }

  Widget buildBottomPart() {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Or sign in with social network',
            style: LoginScreenStylies.signinsocialstylies,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5, color: AppColors.baseGrey40Color),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5, color: AppColors.baseGrey40Color),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                MaterialButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.5, color: AppColors.baseGrey40Color),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSingupButton({required Widget child, Function? onPressed}) {
    return Padding(
      padding: const EdgeInsets.only(left: 39,right: 39),
      child: MaterialButton(
        shape: OutlineInputBorder(
          borderSide: BorderSide(width: 0.5, color: AppColors.baseGrey40Color),
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: () {
          RoutingPage.gotoNextPage(context: context, navigateTo: SignupScreen(),);
        },
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                  buildBottomPart(),
                  buildSingupButton(
                      child: Text(
                    'Sign up',
                    style: LoginScreenStylies.signupstylies,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
