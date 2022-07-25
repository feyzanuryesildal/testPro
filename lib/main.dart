import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:testpro/AuthLoginPage/mainPageView.dart';
import 'package:testpro/AuthLoginPage/scrollPageView.dart';
import 'package:testpro/AuthLoginPage/signinPageView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signinPageView(),
    );
  }
}
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  var selectedTab = 1;
  var selectedText = "First Tab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
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
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              child: selectedTab == 1 ? signUp() : signIn(),
            )
          ],
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
          )
        ],
      ),
    );
  }
}
*/