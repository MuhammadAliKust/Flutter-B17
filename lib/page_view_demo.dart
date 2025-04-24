import 'package:flutter/material.dart';
import 'package:flutter_b17/models/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/ob1.png', title: 'Trending news'),
    OnBoardingModel(
        image: 'assets/images/ob2.png', title: 'React,Save & Share News'),
    OnBoardingModel(
        image: 'assets/images/ob3.png',
        title: 'Video & live News From Youtube'),
    OnBoardingModel(
        image: 'assets/images/ob4.png',
        title: 'Browse News From Variety Of Categories'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: PageView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: onBoardingList.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Image.asset(onBoardingList[i].image),
                        Text(onBoardingList[i].title.toString())
                      ],
                    );
                  }),
            ),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}
