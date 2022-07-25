import 'package:flutter/material.dart';
import 'package:testpro/AuthLoginPage/signinEmailPageView.dart';

class signinPageView extends StatefulWidget {
  const signinPageView({Key? key}) : super(key: key);

  @override
  State<signinPageView> createState() => _signinPageViewState();
}

class _signinPageViewState extends State<signinPageView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Pro",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: size.height * .5,
          width: size.width * .85,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(.75),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.75),
                    blurRadius: 10,
                    spreadRadius: 2)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              signinEmailPageView()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          //color: colorPrimaryShade,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                            child: Text(
                              "e-mail",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          //color: colorPrimaryShade,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                            child: Text(
                              "google account",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(

                          border: Border.all(color: Colors.grey, width: 2),
                          //color: colorPrimaryShade,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                            child: Text(
                              "facebook",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RaisedButton(onPressed: (){},child: Text("Sign up"),),

                ],
              ),
            ),
          ),
        ),
        ),
      ),
    );
  }
}
