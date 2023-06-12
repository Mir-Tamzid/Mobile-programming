import 'package:flutter_app/consts/consts.dart';
import 'package:flutter_app/widget_common/bd_widget.dart';
import 'package:flutter_app/widget_common/applogo_widget.dart';
import 'package:flutter_app/widget_common/custom_textfield.dart';
import 'package:flutter_app/widget_common/our_button.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);
  @override
  State<Signup> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<Signup> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          10.heightBox,
          "Sign Up to $appname".text.fontFamily(bold).white.size(18).make(),
          10.heightBox,
          Column(
            children: [
              customTextField(hint: nameHint, title: name),
              customTextField(hint: emailHint, title: email),
              customTextField(hint: passwordHint, title: password),
              customTextField(hint: passwordHint, title: reTypepassword),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPass.text.make())),

              Row(
                children: [
                  Checkbox(
                    activeColor: redColor,
                    checkColor: whiteColor,
                    value: isCheck,
                    onChanged: (newValue) {
                      setState(() {
                        isCheck = newValue;
                      });
                    },
                  ),
                  10.widthBox,
                  Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                    TextSpan(
                        text: "I agree to the ",
                        style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        )),
                    TextSpan(
                        text: terms,
                        style: TextStyle(
                          fontFamily: bold,
                          color: redColor,
                        )),
                    TextSpan(
                        text: " & ",
                        style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        )),
                    TextSpan(
                        text: privacyPolicy,
                        style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        ))
                  ])))
                ],
              ),
              5.heightBox,
              // ourButton().box.width(context.screenWidth - 50).make(),
              ourButton(
                      color: isCheck == true ? purple : lightGrey,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(fontFamily: bold, color: fontGrey),
                    ),
                    TextSpan(
                      text: "Log In ",
                      style: TextStyle(fontFamily: bold, color: redColor),
                    ),
                  ],
                ),
              ).onTap(() {
                Get.back();
              }),
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make(),
        ]),
      ),
    ));
  }
}
