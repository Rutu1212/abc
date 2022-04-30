import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/Widget/MyButtonWidget.dart';
import 'package:untitled/Widget/MyTextFromField.dart';
import 'package:untitled/appColors/app_colors.dart';


import '../Styles/Signup Screen stylies.dart';
import '../svg image/svg_image.dart';

class SignupScreen extends StatelessWidget {
  Widget buildToppPart() {
    return Column(
      children: [
        Image.asset("Photo/Logo.png", height: 150),
        MyTextFromField(hintText: 'Full Name', obscureText: false),
        MyTextFromField(hintText: 'Email', obscureText: false),
        MyTextFromField(hintText: 'Password', obscureText: true),
        MyTextFromField(hintText: 'Confirm Password', obscureText: true),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: MyButtonWidget(
              onPress: () {},
              color: AppColors.baseDarkPinkColor,
              text: 'Create an account'),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            text: 'By sigining up you agress to our\n\t',
            style: SignupScreenStylies.signInAgreesstyle,
            children: <TextSpan>[
              TextSpan(text: 'Terms', style: SignupScreenStylies.terms),
              TextSpan(text: ' and\t', style: SignupScreenStylies.and),
              TextSpan(
                  text: ' Condition of Use ',
                  style: SignupScreenStylies.condition),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildSocialButton(
      {required Widget child, required Function onPressed}) {
    return MaterialButton(
        onPressed: () {},
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.baseGrey10Color, width: 0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: child);
  }

  Widget buildBottomPart(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Or Sign in with social network',
            style: SignupScreenStylies.socialnetwork,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildSocialButton(
                  child: SvgPicture.asset(SvgImages.facebook,
                      color: AppColors.baseBlackColor, width: 45),
                  onPressed: () {},
                ),
                buildSocialButton(
                  child: SvgPicture.asset(SvgImages.google,
                      color: AppColors.baseBlackColor, width: 45),
                  onPressed: () {},
                ),
                buildSocialButton(
                  child: SvgPicture.asset(SvgImages.twitter,
                      color: AppColors.baseBlackColor, width: 45),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: MaterialButton(
              onPressed: () {

              },
              color: AppColors.baseGrey10Color,
              height: 55,
              elevation: 0,
              child: Center(
                child: Text('Sign Up',
                    style: SignupScreenStylies.signupbuttomTstyle),
              ),
            ),
          ),
          SizedBox(height: 60,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                buildToppPart(),
                buildBottomPart(context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
