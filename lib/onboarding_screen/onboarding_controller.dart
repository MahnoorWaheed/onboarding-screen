import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:loss_belly/onboarding_screen/model.dart';
import 'package:flutter/material.dart';
import 'package:loss_belly/selectgender.dart';

class OnboardingController extends GetxController{
  var selectedpageindex=0.obs;
  bool get isLastPage => selectedpageindex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.to(SelectGender());
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/images/pandajogging.jpg', 
    'Leshh Do Jogging',
        'Push harder than yesterday if you want a different tomorrow.',
        ),
    OnboardingInfo('assets/images/cutepanda1.jpg', 'Try Picking Dumbles',
        'Instead of focusing on weight \nof your body going down, \nfocus on the weight of your dumbles going up ', ),
    OnboardingInfo('assets/images/panda struggle.png', 'Lessh Do Some Rest',
        'Struggle is very hard but it is real.. ',)
  ];
}