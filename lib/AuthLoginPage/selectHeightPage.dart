import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:testpro/AuthLoginPage/mainPageView.dart';
import 'package:testpro/AuthLoginPage/selectWeightPage.dart';

class selectionHeightView extends StatefulWidget {
  const selectionHeightView({Key? key}) : super(key: key);

  @override
  _selectionHeightViewState createState() => _selectionHeightViewState();
}

class _selectionHeightViewState extends State<selectionHeightView> {
  int _currentValue = 145;
  int _minValue = 140;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 13,),

              Column(
                children: [
                  Text("What is Your Height?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                  SizedBox(height: 24,),

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
                  maxValue: 220,
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
