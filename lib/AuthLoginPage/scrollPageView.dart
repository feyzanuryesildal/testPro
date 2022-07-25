import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testpro/AuthLoginPage/selectHeightPage.dart';
import 'package:testpro/AuthLoginPage/selectOldPage.dart';
import 'package:testpro/AuthLoginPage/selectSexPage.dart';
import 'package:testpro/AuthLoginPage/selectWeightPage.dart';

class scrollPageView extends StatefulWidget {
  const scrollPageView({Key? key}) : super(key: key);

  @override
  State<scrollPageView> createState() => _scrollPageViewState();
}

class _scrollPageViewState extends State<scrollPageView> {
  final controller=PageController();
  bool isLastPage=false;
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:  GestureDetector(
            child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
            onTap: () {
              Navigator.pop(context);
            } ,
          ) ,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.only(bottom: 80),
          child: PageView(
            onPageChanged: (index){
              setState(() => isLastPage=index==3);
            },
            controller: controller,
            children: [
                selectionSex(),
                selectionAgeView(),
                selectionHeightView(),
              selectionWeightView(),


            ],
          ),
        ),
        bottomSheet:
        isLastPage ? TextButton(
            style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),minimumSize: Size.fromHeight(80)),
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => selectionSex()));
            }, child: Text("Get Started",style: TextStyle(fontSize: 24),))
            :Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: ExpandingDotsEffect(
                      spacing: 10,
                      radius:  8.0,
                      dotWidth:  8.0,
                      expansionFactor: 4,
                      dotHeight:  8.0,
                      dotColor: Color(0xFFE0E0E0),
                      activeDotColor: Color(0xFF6842FF)

                  ),
                  onDotClicked: (index)=>controller.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);

                        },
                        style: ElevatedButton.styleFrom(primary: Color(0xFF6842FF),shape: StadiumBorder(),),
                        child: Text("Next")),
                  ),
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}
