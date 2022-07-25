
import 'package:flutter/material.dart';
import 'package:testpro/AuthLoginPage/signinPageView.dart';

import '../Services/AuthServices.dart';
import 'mainPageView.dart';

class signinEmailPageView extends StatefulWidget {
  const signinEmailPageView({Key? key}) : super(key: key);

  @override
  State<signinEmailPageView> createState() => _signinEmailPageViewState();

}

class _signinEmailPageViewState extends State<signinEmailPageView> {
  var selectedTab = 2;
  var selectedText = "First Tab";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading:  GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) =>
                    signinPageView()));
          } ,
        ) ,
        title: Text("Test Pro",style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(

                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 50,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: selectedTab == 1
                              ? MaterialStateProperty.all<Color>(Colors.white)
                              : MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () {
                          setState(() {
                            selectedTab = 1;
                            selectedText = "First Tab";
                          });
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: selectedTab == 1
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: selectedTab == 1 ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        style: ButtonStyle(
                          backgroundColor: selectedTab == 2
                              ? MaterialStateProperty.all<Color>(Colors.white)
                              : MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () {
                          setState(() {
                            selectedTab = 2;
                            selectedText = "Second Tab";
                          });
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            fontWeight: selectedTab == 2
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: selectedTab == 2 ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.7,
                child: selectedTab == 1 ? signUp() : signIn(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool obscureText = true;
  TextEditingController emailController1 = TextEditingController();
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordAgainController1 = TextEditingController();
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            TextFormField(
              controller: emailController1,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                ),
                hintText: "Email",
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Create Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            TextFormField(
              controller: passwordController1,
              obscureText: obscureText,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                ),
                hintText: "Create Password",
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Re-write Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            TextFormField(
              controller: passwordAgainController1,
              obscureText: obscureText,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 3,
                    style: BorderStyle.solid,
                  ),
                ),
                hintText: "Re-write Password",
              ),
            ),
            SizedBox(
              height: 160,
            ),
            InkWell(
              onTap: () {
                _authService
                    .createPerson(
                    emailController1.text,
                    passwordController1.text)
                    .then((value) {
                  return Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => mainPageView()));
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.grey,
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

class signIn extends StatefulWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
              hintText: "Email",
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Text(
            "Password",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
              hintText: "Password",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(child: FlatButton(onPressed: (){},

              child: Text("Forget Password?"))),
          SizedBox(
            height: 180,
          ),
          InkWell(
            onTap: () {
              _authService
                  .signIn(emailController.text,
                  passwordController.text)
                  .then((value) {
                return Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => mainPageView()));
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  color: Colors.grey,
                  borderRadius:
                  BorderRadius.all(Radius.circular(10))),
              child: const Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    )),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
