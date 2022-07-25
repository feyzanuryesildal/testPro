import 'package:flutter/material.dart';
import 'package:testpro/AuthLoginPage/scrollPageView.dart';
import 'package:testpro/AuthLoginPage/selectSexPage.dart';

class mainPageView extends StatefulWidget {
  const mainPageView({Key? key}) : super(key: key);

  @override
  State<mainPageView> createState() => _mainPageViewState();
}

class _mainPageViewState extends State<mainPageView> {
  TextEditingController nameContorller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
        title: Text("Test Pro",style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 350,
                height: 550,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      children: [
                        Text("Your Name?",style: TextStyle(color: Colors.black,fontSize: 40),),
                      ],

                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: nameContorller,
                      decoration: InputDecoration(
                        hintText: "Your Name"
                      ),
                    ),


                  ],
                ),
              ),
              RaisedButton(onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        scrollPageView()));
              },
                child: Text("Continue",style: TextStyle(color: Colors.white),),
                color: Colors.blue,
                padding: EdgeInsets.only(left: 100.0,right: 100.0),),
            ],

          ),
        ),
      ),
    );
  }
}
