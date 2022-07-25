import 'package:flutter/material.dart';

class selectionSex extends StatefulWidget {
  const selectionSex({Key? key}) : super(key: key);

  @override
  State<selectionSex> createState() => _selectionSexState();
}

class _selectionSexState extends State<selectionSex> {
  late bool isMale=true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              child: Center(child: Text("What is your sex?",style: TextStyle(fontSize: 30),)),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          print('Button tapped');
                          setState(() {
                            isMale=true;
                          });
                        },
                        child:  Container(
                          width: size.width * 0.4,
                          height: size.height * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                spreadRadius: 0.5,
                                offset: Offset(5, 5),
                              )
                            ],

                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male,size: MediaQuery.of(context).size.width*0.25,color: isMale==true ? Colors.blueAccent: Colors.grey),

                            ],

                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Man',
                      style: TextStyle(fontSize: 25,color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale=false;
                          });
                        },
                        child:  Container(
                          width: size.width * 0.4,
                          height: size.height * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                spreadRadius: 0.5,
                                offset: Offset(5, 5),
                              )
                            ],

                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,size: MediaQuery.of(context).size.width*0.25,color: isMale==false? Colors.redAccent:Colors.grey,),

                            ],
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Woman',
                      style: TextStyle(fontSize: 25,color: Colors.grey),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(
              height: 150,
            ),
            /*RaisedButton(onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      selectionSex()));
            },
              child: Text("Continue",style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              padding: EdgeInsets.only(left: 100.0,right: 100.0),),*/
          ],

        ),
      ),
    );
  }
}
