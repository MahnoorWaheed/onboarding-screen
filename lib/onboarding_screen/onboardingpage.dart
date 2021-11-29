import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loss_belly/onboarding_screen/onboarding_controller.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({ Key? key }) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _controller.pageController,
                onPageChanged: _controller.selectedpageindex,
                itemCount: _controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: index==0?const Color(0xffF9C7CA): index==1?Colors.white: index==2?const Color(0xffC9CACA): Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            _controller.onboardingPages[index].imageAsset),
                        const SizedBox(height: 32),
                        Text(
                          _controller.onboardingPages[index].title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w800, fontFamily: 'Montserrat'),
                        ),
                        const SizedBox(height: 32),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 64.0),
                          child: Text(
                            _controller.onboardingPages[index].description,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 20,
              left: 20,
              child: Row(
                children: List.generate(
                  _controller.onboardingPages.length,
                  (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: _controller.selectedpageindex.value == index
                            ? Colors.white
                            : Colors.black,
                        shape: BoxShape.circle,
                      ),
                    );

                  }),
                ),
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                elevation: 2,
                
                onPressed: _controller.forwardAction,
                 backgroundColor: Colors.black,
                child: Obx(() {
                  return Text(_controller.isLastPage ? 'Start' : 'Next', 
                  style: const TextStyle(fontWeight: FontWeight.w900),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}