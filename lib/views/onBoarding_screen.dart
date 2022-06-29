import 'package:algoriza/models/onBoarding_model/onBoarding_model.dart';
import 'package:algoriza/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var pageController = PageController();
  bool islast = false;
  List<Widget> onBoardingList =[
    const BoardingModel(
      title:'first page' ,
      bodytext: 'this is the body text for the page no 1',
      image: 'onBoarding.png',
    ),
    const BoardingModel(
      title:'seconed Fage' ,
      bodytext: 'this is the body text for the page no 2',
      image: 'onBoarding.png',
    ),
    const BoardingModel(
      title:'third page' ,
      bodytext: 'this is the body text for the page no 3',
      image: 'onBoarding.png',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) =>
                onBoardingList[index],
                itemCount: onBoardingList.length,
                onPageChanged: (index) {
                  if(index == onBoardingList.length-1){
                    islast = true;
                  }else{
                    islast = false;
                  }
                },
              ),
            ),
            Row(
              children: [
                const Spacer(),
                SmoothPageIndicator(
                  controller: pageController,
                  count: onBoardingList.length,
                  effect: const ExpandingDotsEffect(),
                ),
                const Spacer(),
                FloatingActionButton(
                  onPressed: () {
                    if(islast)
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      }else{
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 550),
                        curve: Curves.fastOutSlowIn,
                      );
                    }



                  },
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

