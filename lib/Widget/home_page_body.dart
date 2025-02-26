import 'package:calculator/Widget/custom_buttom.dart';
import 'package:calculator/Widget/dark_light_mode.dart';
import 'package:calculator/Widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const DarkLightMode(),
          InputTextField(),
          OutputTextField(),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtom(
                    icon: FontAwesomeIcons.c,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.percent,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.deleteLeft,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.divide,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtom(
                    icon: FontAwesomeIcons.seven,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.eight,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.nine,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.xmark,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtom(
                    icon: FontAwesomeIcons.four,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.five,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.six,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.minus,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtom(
                    icon: FontAwesomeIcons.one,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.two,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.three,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.plus,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtom(
                    icon: FontAwesomeIcons.zero,
                  ),
                  CustomButtom(
                    icon: Icons.circle,
                  ),
                  CustomButtom(
                    icon: FontAwesomeIcons.equals,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
