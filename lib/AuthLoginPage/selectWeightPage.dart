import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:testpro/AuthLoginPage/selectHeightPage.dart';
import 'package:testpro/AuthLoginPage/selectOldPage.dart';

class selectionWeightView extends StatefulWidget {
  const selectionWeightView({Key? key}) : super(key: key);

  @override
  _selectionWeightViewState createState() => _selectionWeightViewState();
}

class _selectionWeightViewState extends State<selectionWeightView> {
  int _currentValue = 50;
  int _minValue = 40;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 24,),

              Column(
                children: [
                  Text("What is Your Weight?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30),),
                  SizedBox(height: 24,),

                ],
              ),
              Column(
                children: [
                  NumberPicker(
                    selectedTextStyle: TextStyle(color:Color(0xFF6842FF),fontSize: 50,fontWeight: FontWeight.bold ),
                    textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey,),
                    value: _currentValue,
                    minValue: _minValue,
                    axis: Axis.horizontal,
                    itemCount: 3,
                    itemHeight: MediaQuery.of(context).size.height*0.09,
                    maxValue: 200,
                    onChanged: (value) => setState(() => _currentValue = value),
                  ),
                  Icon(Icons.arrow_drop_up_outlined,color:Color(0xFF6842FF),size: MediaQuery.of(context).size.width*0.2 ,),

                ],
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
