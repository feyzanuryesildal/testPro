import 'package:flutter/material.dart';

import 'package:numberpicker/numberpicker.dart';
import 'package:testpro/AuthLoginPage/selectHeightPage.dart';
import 'package:testpro/AuthLoginPage/selectSexPage.dart';

class selectionAgeView extends StatefulWidget {
  const selectionAgeView({Key? key}) : super(key: key);

  @override
  _selectionAgeViewState createState() => _selectionAgeViewState();
}

class _selectionAgeViewState extends State<selectionAgeView> {
  int _currentValue = 15;
  int _minValue = 10;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("How Old Are You?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                  SizedBox(height: 15,),

                ],
              ),
              Center(
                child: NumberPicker(
                  selectedTextStyle: TextStyle(color:Color(0xFF6842FF),fontSize: 50,fontWeight: FontWeight.bold ),
                  textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey,),
                  value: _currentValue,
                  minValue: _minValue,
                  itemCount: 7,
                  itemHeight: MediaQuery.of(context).size.height*0.09,
                  decoration:const BoxDecoration(
                    border: Border(
                      bottom: BorderSide( //                   <--- left side
                        color: Color(0xFF6842FF),
                        width: 3.0,
                      ),
                      top: BorderSide( //                    <--- top side
                        color: Color(0xFF6842FF),
                        width: 3.0,
                      ),
                    ),
                  ),
                  maxValue: 100,
                  onChanged: (value) => setState(() => _currentValue = value),
                ),
              ),
              // Text('Current value: $_currentValue'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                  ],
                ),
              )
            ],
          ),
        ));
  }
}
