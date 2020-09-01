import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Say Hii!\t:)".text.center.white.xl2.make(),
              10.heightBox,
              Icon(AntDesign.mail, color: Colors.deepOrangeAccent).mdClick(() {
                launch(
                    "https://www.mail.google.com/boddunitishkumar@gmail.com");
              }).make(),
              10.heightBox,
              "\nMy Resume".text.center.white.xl2.make(),
              10.heightBox,
              Icon(AntDesign.upload, color: Colors.deepOrangeAccent)
                  .mdClick(() {
                launch(
                    "https://drive.google.com/file/d/1lIeyJ6WDL46lG8ShyRwa3oUrRNQU1m6K/view?usp=sharing");
              }).make(),
              10.heightBox
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Got a project?\nLet's talk.".text.center.white.xl2.make(),
              10.widthBox,
              Icon(AntDesign.mail, color: Colors.white).mdClick(() {
                launch(
                    "https://www.mail.google.com/boddunitishkumar@gmail.com");
              }).make(),
              10.widthBox
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        10.heightBox,
        "Thanks for scrolling, ".richText.semiBold.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        [
          "Made in India with".text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
