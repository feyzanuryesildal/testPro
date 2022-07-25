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
                          color: Colors.redAccent,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  "assets/Mail-512.png",
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "Sign in with email",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
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
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  "assets/google.png",
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "Sign in with Google",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
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
                          color: Colors.blueAccent,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Center(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  "assets/images.png",
                                  width: 30,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  "Sign in with Facebook",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RaisedButton(onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            signinEmailPageView()));
                  },child: Text("Sign up"),),

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
